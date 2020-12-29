/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLNblqoJ.aml, Tue Dec 29 21:38:34 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000C99 (3225)
 *     Revision         0x02
 *     Checksum         0xC7
 *     OEM ID           "shl"
 *     OEM Table ID     "Battery"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "Battery", 0x00000000)
{
    External (_PR_.CPU0, ProcessorObj)    // (from opcode)
    External (_PR_.CPU1, ProcessorObj)    // (from opcode)
    External (_SB_.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.BAT1.BATI, PkgObj)    // (from opcode)
    External (_SB_.BAT1.STAT, PkgObj)    // (from opcode)
    External (_SB_.BAT1.XBIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.BAT1.XBST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ACEX, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.B1ST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MBTN, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.TSSM, FieldUnitObj)    // (from opcode)
    External (_SB_.PWRB, DeviceObj)    // (from opcode)
    External (_SB_.SECB, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SECS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.SECW, MethodObj)    // 3 Arguments (from opcode)
    External (_TZ_.TZ01, ThermalZoneObj)    // (from opcode)
    External (BFCC, FieldUnitObj)    // (from opcode)
    External (CCRN, MethodObj)    // 0 Arguments (from opcode)
    External (CFGD, IntObj)    // (from opcode)
    External (CPRN, MethodObj)    // 0 Arguments (from opcode)
    External (DTSE, FieldUnitObj)    // (from opcode)
    External (ECON, IntObj)    // (from opcode)
    External (GSCI, FieldUnitObj)    // (from opcode)
    External (OSYS, FieldUnitObj)    // (from opcode)
    External (P80D, FieldUnitObj)    // (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (PPCS, FieldUnitObj)    // (from opcode)
    External (PWRS, FieldUnitObj)    // (from opcode)
    External (TRAP, MethodObj)    // 1 Arguments (from opcode)
    External (TZON, FieldUnitObj)    // (from opcode)
    External (XPTS, MethodObj)    // 1 Arguments (from opcode)
    External (XWAK, MethodObj)    // 1 Arguments (from opcode)

    If (_OSI ("Darwin"))
    {
        Method (B1B2, 2, NotSerialized)
        {
            Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
        }
    }

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (XCR, EmbeddedControl, Zero, 0xFF)
            Field (XCR, ByteAcc, Lock, Preserve)
            {
                Offset (0xA2), 
                BRA0,   8, 
                BRA1,   8, 
                BPR0,   8, 
                BPR1,   8, 
                BVO0,   8, 
                BVO1,   8, 
                Offset (0xB0), 
                BDA0,   8, 
                BDA1,   8, 
                BDF0,   8, 
                BDF1,   8, 
                BDV0,   8, 
                BDV1,   8, 
                BDL0,   8, 
                BDL1,   8
            }
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            Store (Zero, P80D)
            P8XH (Zero, Arg0)
            Store (B1B2 (\_SB.PCI0.LPCB.H_EC.BDF0, \_SB.PCI0.LPCB.H_EC.BDF1), BFCC)
            If (LEqual (Arg0, 0x04))
            {
                \_SB.SECB (0x9B, One)
            }

            If (LEqual (Arg0, 0x05))
            {
                \_SB.SECB (0xA6, Zero)
                \_SB.SECS (0xA7)
            }
        }
        Else
        {
            Return (XPTS (Arg0))
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            P8XH (Zero, 0xAB)
            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                If (And (CFGD, 0x01000000))
                {
                    If (LAnd (And (CFGD, 0xF0), LEqual (OSYS, 0x07D1)))
                    {
                        TRAP (0x3D)
                    }
                }
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LNotEqual (\_SB.PCI0.LPCB.H_EC.TSSM, TZON))
                {
                    Store (\_SB.PCI0.LPCB.H_EC.TSSM, TZON)
                    CPRN ()
                }
            }

            If (LOr (LEqual (GSCI, 0x03), LEqual (GSCI, 0x04)))
            {
                CCRN ()
            }

            If (LNotEqual (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS))
            {
                Store (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS)
            }

            If (LNotEqual (B1B2 (\_SB.PCI0.LPCB.H_EC.BDF0, \_SB.PCI0.LPCB.H_EC.BDF1), BFCC))
            {
                Notify (\_SB.BAT1, 0x80)
                Notify (\_SB.BAT1, 0x81)
            }

            If (LEqual (Arg0, 0x03))
            {
                TRAP (0x46)
            }

            If (LEqual (Arg0, 0x04))
            {
                Notify (\_SB.PWRB, 0x02)
                If (DTSE)
                {
                    TRAP (0x47)
                }

                Notify (\_TZ.TZ01, 0x80)
                If (LEqual (OSYS, 0x07D2))
                {
                    If (And (CFGD, One))
                    {
                        If (LGreater (PPCS, Zero))
                        {
                            Subtract (PPCS, One, PPCS)
                            PNOT ()
                            Add (PPCS, One, PPCS)
                            PNOT ()
                        }
                        Else
                        {
                            Add (PPCS, One, PPCS)
                            PNOT ()
                            Subtract (PPCS, One, PPCS)
                            PNOT ()
                        }
                    }
                }
            }

            If (LNotEqual (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS))
            {
                Store (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS)
                Notify (\_PR.CPU0, 0x81)
                Notify (\_PR.CPU1, 0x81)
            }

            If (LNotEqual (B1B2 (\_SB.PCI0.LPCB.H_EC.BDF0, \_SB.PCI0.LPCB.H_EC.BDF1), BFCC))
            {
                Notify (\_SB.BAT1, 0x80)
                Notify (\_SB.BAT1, 0x81)
            }

            If (LEqual (OSYS, 0x07D6))
            {
                Store (\_SB.SECB (0xA5, Zero), Local1)
                If (Local1)
                {
                    Notify (\_SB.PCI0.LPCB.H_EC.MBTN, 0x02)
                }
            }

            If (LEqual (OSYS, 0x07D6))
            {
                \_SB.SECB (0xA6, One)
            }
            Else
            {
                \_SB.SECB (0xA6, Zero)
            }

            Store (Zero, P80D)
            P8XH (Zero, 0xCD)
            Return (Package (0x02)
            {
                Zero, 
                Zero
            })
        }
        Else
        {
            Return (XWAK (Arg0))
        }
    }

    Scope (\_SB.BAT1)
    {
        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (ECON, Zero))
                {
                    Store (SECW (0x82, 0xB0, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, One))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, One))
                    }

                    Store (SECW (0x82, 0xB2, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x02))
                    }

                    Store (SECW (0x82, 0xB4, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, 0x04))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x04))
                    }

                    Store (Zero, Index (\_SB.BAT1.BATI, 0x05))
                    Store (SECW (0x82, 0xB6, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Zero, Index (\_SB.BAT1.BATI, 0x06))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x06))
                    }
                }
                Else
                {
                    Store (B1B2 (^^PCI0.LPCB.H_EC.BDA0, ^^PCI0.LPCB.H_EC.BDA1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, One))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, One))
                    }

                    Store (B1B2 (^^PCI0.LPCB.H_EC.BDF0, ^^PCI0.LPCB.H_EC.BDF1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x02))
                    }

                    Store (B1B2 (^^PCI0.LPCB.H_EC.BDV0, ^^PCI0.LPCB.H_EC.BDV1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, 0x04))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x04))
                    }

                    Store (Zero, Index (\_SB.BAT1.BATI, 0x05))
                    Store (B1B2 (^^PCI0.LPCB.H_EC.BDL0, ^^PCI0.LPCB.H_EC.BDL1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.BATI, 0x06))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.BATI, 0x06))
                    }
                }

                Store ("", Index (\_SB.BAT1.BATI, 0x09))
                Store ("", Index (\_SB.BAT1.BATI, 0x0A))
                Store ("LION", Index (\_SB.BAT1.BATI, 0x0B))
                Store ("SAMSUNG Electronics", Index (\_SB.BAT1.BATI, 0x0C))
                Return (\_SB.BAT1.BATI)
            }
            Else
            {
                Return (XBIF ())
            }
        }

        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
        {
            If (_OSI ("Darwin"))
            {
                If (LEqual (ECON, Zero))
                {
                    Store (SECB (0x81, 0x84), Local0)
                    If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local0, 0x05)))
                    {
                        If (LEqual (PWRS, One))
                        {
                            Store (0x02, Local0)
                        }
                        Else
                        {
                            Store (One, Local0)
                        }
                    }

                    Store (Local0, Index (\_SB.BAT1.STAT, Zero))
                    Store (SECW (0x82, 0xA4, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, One))
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x8000))
                        {
                            XOr (Local0, 0xFFFF, Local0)
                            Increment (Local0)
                        }

                        Store (Local0, Index (\_SB.BAT1.STAT, One))
                    }

                    Store (SECW (0x82, 0xA2, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.STAT, 0x02))
                    }

                    Store (SECW (0x82, 0xA6, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, 0x03))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.STAT, 0x03))
                    }
                }
                Else
                {
                    Store (^^PCI0.LPCB.H_EC.B1ST, Local0)
                    If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local0, 0x05)))
                    {
                        If (LEqual (PWRS, One))
                        {
                            Store (0x02, Local0)
                        }
                        Else
                        {
                            Store (One, Local0)
                        }
                    }

                    Store (Local0, Index (\_SB.BAT1.STAT, Zero))
                    Store (B1B2 (^^PCI0.LPCB.H_EC.BPR0, ^^PCI0.LPCB.H_EC.BPR1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, One))
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x8000))
                        {
                            XOr (Local0, 0xFFFF, Local0)
                            Increment (Local0)
                        }

                        Store (Local0, Index (\_SB.BAT1.STAT, One))
                    }

                    Store (B1B2 (^^PCI0.LPCB.H_EC.BRA0, ^^PCI0.LPCB.H_EC.BRA1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.STAT, 0x02))
                    }

                    Store (B1B2 (^^PCI0.LPCB.H_EC.BVO0, ^^PCI0.LPCB.H_EC.BVO1), Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (\_SB.BAT1.STAT, 0x03))
                    }
                    Else
                    {
                        Store (Local0, Index (\_SB.BAT1.STAT, 0x03))
                    }
                }

                Return (\_SB.BAT1.STAT)
            }
            Else
            {
                Return (XBST ())
            }
        }
    }
}

