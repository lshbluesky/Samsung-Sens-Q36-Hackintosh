/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00004279 (17017)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xAC
 *     OEM ID           "INTEL "
 *     OEM Table ID     "CALISTGA"
 *     OEM Revision     0x06040000 (100925440)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "DSDT", 1, "INTEL ", "CALISTGA", 0x06040000)
{
    External (CFGD, UnknownObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
    Field (IO_T, ByteAcc, NoLock, Preserve)
    {
        Offset (0x08), 
        TRP0,   8
    }

    OperationRegion (SECT, SystemIO, 0x0900, 0x10)
    Field (SECT, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        Offset (0x04), 
        Offset (0x06), 
        Offset (0x08), 
        TRP1,   8, 
        Offset (0x0A), 
        Offset (0x0B), 
        Offset (0x0C), 
        Offset (0x0D), 
        Offset (0x0E), 
        Offset (0x0F), 
        Offset (0x10)
    }

    OperationRegion (PMIO, SystemIO, 0x1000, 0x80)
    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        Offset (0x42), 
            ,   1, 
        GPEC,   1
    }

    OperationRegion (GPIO, SystemIO, 0x1180, 0x3C)
    Field (GPIO, ByteAcc, NoLock, Preserve)
    {
        GU00,   8, 
        GU01,   8, 
        GU02,   8, 
        GU03,   8, 
        GIO0,   8, 
        GIO1,   8, 
        GIO2,   8, 
        GIO3,   8, 
        Offset (0x0C), 
        GL00,   8, 
            ,   4, 
            ,   1, 
        Offset (0x0E), 
            ,   5, 
        GP21,   1, 
        Offset (0x0F), 
        GL03,   8, 
        Offset (0x18), 
        GB00,   8, 
        GB01,   8, 
        GB02,   8, 
        GB03,   8, 
        Offset (0x2C), 
        GIV0,   8, 
        GIV1,   8, 
        GIV2,   8, 
        GIV3,   8, 
        GU04,   8, 
        GU05,   8, 
        GU06,   8, 
        GU07,   8, 
        GIO4,   8, 
        GIO5,   8, 
        GIO6,   8, 
        GIO7,   8, 
        GL04,   8, 
        GL05,   8, 
        GL06,   8, 
        GL07,   8
    }

    OperationRegion (GNVS, SystemMemory, 0x9F69BE4C, 0x0100)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        Offset (0x14), 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        Offset (0x1E), 
        SECI,   8, 
        DB00,   8, 
        DW00,   16, 
        BFCC,   16, 
        TPMD,   8, 
        TZON,   8, 
        TPOS,   8, 
        PVFN,   8, 
        APIC,   8, 
        MPEN,   8, 
        PPCS,   8, 
        PPCM,   8, 
        PCP0,   8, 
        PCP1,   8, 
        DMED,   8, 
        Offset (0x32), 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DIAG,   8, 
        NIST,   8, 
        RIST,   8, 
        GSCI,   8, 
        RCST,   8, 
        CCST,   8, 
        RCNT,   8, 
        Offset (0x63), 
        DTSP,   8, 
        Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        Offset (0x74), 
        MEFE,   8, 
        Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        Offset (0x82), 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8
    }

    OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
    Field (RCRB, DWordAcc, Lock, Preserve)
    {
        Offset (0x1000), 
        Offset (0x3000), 
        Offset (0x3404), 
        HPAS,   2, 
            ,   5, 
        HPAE,   1, 
        Offset (0x3418), 
            ,   1, 
        PATD,   1, 
        SATD,   1, 
        SMBD,   1, 
        HDAD,   1, 
        A97D,   1, 
        Offset (0x341A), 
        RP1D,   1, 
        RP2D,   1, 
        RP3D,   1, 
        RP4D,   1, 
        RP5D,   1, 
        RP6D,   1
    }

    Mutex (MUTX, 0x00)
    Name (_S0, Package (0x03)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x03)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        Zero
    })
    Name (_S4, Package (0x03)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        Zero
    })
    Name (_S5, Package (0x03)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        Zero
    })
    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00001010, 0x06){}
        Processor (CPU1, 0x01, 0x00001010, 0x06){}
    }

    Name (DSEN, One)
    Name (ECON, Zero)
    Name (GPIC, Zero)
    Name (CTYP, Zero)
    Name (L01C, Zero)
    Name (VFN0, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        Store (Arg0, GPIC) /* \GPIC */
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Store (Zero, P80D) /* \P80D */
        P8XH (Zero, Arg0)
        Store (\_SB.PCI0.LPCB.H_EC.B1DF, BFCC) /* \BFCC */
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

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
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
                Store (\_SB.PCI0.LPCB.H_EC.TSSM, TZON) /* \TZON */
                CPRN ()
            }
        }

        If (LOr (LEqual (GSCI, 0x03), LEqual (GSCI, 0x04)))
        {
            CCRN ()
        }

        If (LNotEqual (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS))
        {
            Store (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS) /* \PWRS */
        }

        If (LNotEqual (\_SB.PCI0.LPCB.H_EC.B1DF, BFCC))
        {
            Notify (\_SB.BAT1, 0x80) // Status Change
            Notify (\_SB.BAT1, 0x81) // Information Change
        }

        If (LEqual (Arg0, 0x03))
        {
            TRAP (0x46)
        }

        If (LEqual (Arg0, 0x04))
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
            If (DTSE)
            {
                TRAP (0x47)
            }

            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
            If (LEqual (OSYS, 0x07D2))
            {
                If (And (CFGD, One))
                {
                    If (LGreater (PPCS, Zero))
                    {
                        Subtract (PPCS, One, PPCS) /* \PPCS */
                        PNOT ()
                        Add (PPCS, One, PPCS) /* \PPCS */
                        PNOT ()
                    }
                    Else
                    {
                        Add (PPCS, One, PPCS) /* \PPCS */
                        PNOT ()
                        Subtract (PPCS, One, PPCS) /* \PPCS */
                        PNOT ()
                    }
                }
            }
        }

        If (LNotEqual (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS))
        {
            Store (\_SB.PCI0.LPCB.H_EC.ACEX, PWRS) /* \PWRS */
            Notify (\_PR.CPU0, 0x81) // C-State Change
            Notify (\_PR.CPU1, 0x81) // C-State Change
        }

        If (LNotEqual (\_SB.PCI0.LPCB.H_EC.B1DF, BFCC))
        {
            Notify (\_SB.BAT1, 0x80) // Status Change
            Notify (\_SB.BAT1, 0x81) // Information Change
        }

        If (LEqual (OSYS, 0x07D6))
        {
            Store (\_SB.SECB (0xA5, Zero), Local1)
            If (Local1)
            {
                Notify (\_SB.PCI0.LPCB.H_EC.MBTN, 0x02) // Device Wake
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

        Store (Zero, P80D) /* \P80D */
        P8XH (Zero, 0xCD)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Add (L01C, One, L01C) /* \L01C */
            P8XH (Zero, One)
            P8XH (One, L01C)
            Sleep (0x64)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPCS))
            {
                If (\_SB.PCI0.RP01.PDC1)
                {
                    Store (One, \_SB.PCI0.RP01.PDC1)
                    Store (One, \_SB.PCI0.RP01.HPCS)
                    Notify (\_SB.PCI0.RP01, Zero) // Bus Check
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPCS)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPCS))
            {
                If (\_SB.PCI0.RP02.PDC2)
                {
                    Store (One, \_SB.PCI0.RP02.PDC2)
                    Store (One, \_SB.PCI0.RP02.HPCS)
                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPCS)
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Store (Zero, GPEC) /* \GPEC */
            Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.RP01.PSP1)
            {
                Store (One, \_SB.PCI0.RP01.PSP1)
                Store (One, \_SB.PCI0.RP01.PMCS)
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }

            If (\_SB.PCI0.RP02.PSP2)
            {
                Store (One, \_SB.PCI0.RP02.PSP2)
                Store (One, \_SB.PCI0.RP02.PMCS)
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.PCIB, 0x02) // Device Wake
        }

        Method (_L1D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (HKDS, 1, Serialized)
    {
        If (LEqual (Zero, DSEN))
        {
            If (LEqual (TRAP (Arg0), Zero))
            {
                If (LNotEqual (CADL, PADL))
                {
                    Store (CADL, PADL) /* \PADL */
                    If (LGreaterEqual (OSYS, 0x07D1))
                    {
                        Notify (\_SB.PCI0, Zero) // Bus Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.GFX0, Zero) // Bus Check
                    }

                    Sleep (0x02EE)
                }

                Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
            }
        }

        If (LEqual (One, DSEN))
        {
            If (LEqual (TRAP (Increment (Arg0)), Zero))
            {
                Notify (\_SB.PCI0.GFX0, 0x81) // Information Change
            }
        }
    }

    Method (LSDS, 1, Serialized)
    {
        If (Arg0)
        {
            HKDS (0x0C)
        }
        Else
        {
            HKDS (0x0E)
        }

        If (LNotEqual (DSEN, One))
        {
            Sleep (0x32)
            While (LEqual (DSEN, 0x02))
            {
                Sleep (0x32)
            }
        }
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Or (And (P80D, 0xFFFFFF00), Arg1, P80D) /* \P80D */
        }

        If (LEqual (Arg0, One))
        {
            Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08), P80D) /* \P80D */
        }

        If (LEqual (Arg0, 0x02))
        {
            Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10), P80D) /* \P80D */
        }

        If (LEqual (Arg0, 0x03))
        {
            Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18), P80D) /* \P80D */
        }

        Store (P80D, P80H) /* \P80H */
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }

        Notify (\_SB.BAT1, 0x80) // Status Change
    }

    Method (TRAP, 1, Serialized)
    {
        Store (Arg0, SMIF) /* \SMIF */
        Store (Zero, TRP0) /* \TRP0 */
        Return (SMIF) /* \SMIF */
    }

    Method (CPRN, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                Sleep (0x64)
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                Sleep (0x64)
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
        }
    }

    Method (CCRN, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x10))
            {
                Notify (\_PR.CPU0, 0x81) // C-State Change
            }

            If (And (PDC1, 0x10))
            {
                Notify (\_PR.CPU1, 0x81) // C-State Change
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Method (GETP, 1, Serialized)
    {
        If (LEqual (And (Arg0, 0x09), Zero))
        {
            Return (Ones)
        }

        If (LEqual (And (Arg0, 0x09), 0x08))
        {
            Return (0x0384)
        }

        ShiftRight (And (Arg0, 0x0300), 0x08, Local0)
        ShiftRight (And (Arg0, 0x3000), 0x0C, Local1)
        Return (Multiply (0x1E, Subtract (0x09, Add (Local0, Local1))))
    }

    Method (GDMA, 5, Serialized)
    {
        If (Arg0)
        {
            If (LAnd (Arg1, Arg4))
            {
                Return (0x14)
            }

            If (LAnd (Arg2, Arg4))
            {
                Return (Multiply (Subtract (0x04, Arg3), 0x0F))
            }

            Return (Multiply (Subtract (0x04, Arg3), 0x1E))
        }

        Return (Ones)
    }

    Method (GETT, 1, Serialized)
    {
        Return (Multiply (0x1E, Subtract (0x09, Add (And (ShiftRight (Arg0, 0x02), 0x03
            ), And (Arg0, 0x03)))))
    }

    Method (GETF, 3, Serialized)
    {
        Name (TMPF, Zero)
        If (Arg0)
        {
            Or (TMPF, One, TMPF) /* \GETF.TMPF */
        }

        If (And (Arg2, 0x02))
        {
            Or (TMPF, 0x02, TMPF) /* \GETF.TMPF */
        }

        If (Arg1)
        {
            Or (TMPF, 0x04, TMPF) /* \GETF.TMPF */
        }

        If (And (Arg2, 0x20))
        {
            Or (TMPF, 0x08, TMPF) /* \GETF.TMPF */
        }

        If (And (Arg2, 0x4000))
        {
            Or (TMPF, 0x10, TMPF) /* \GETF.TMPF */
        }

        Return (TMPF) /* \GETF.TMPF */
    }

    Method (SETP, 3, Serialized)
    {
        If (LGreater (Arg0, 0xF0))
        {
            Return (0x08)
        }
        Else
        {
            If (And (Arg1, 0x02))
            {
                If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                {
                    Return (0x2301)
                }

                If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
                {
                    Return (0x2101)
                }
            }

            Return (0x1001)
        }
    }

    Method (SDMA, 1, Serialized)
    {
        If (LLessEqual (Arg0, 0x14))
        {
            Return (One)
        }

        If (LLessEqual (Arg0, 0x1E))
        {
            Return (0x02)
        }

        If (LLessEqual (Arg0, 0x2D))
        {
            Return (One)
        }

        If (LLessEqual (Arg0, 0x3C))
        {
            Return (0x02)
        }

        If (LLessEqual (Arg0, 0x5A))
        {
            Return (One)
        }

        Return (Zero)
    }

    Method (SETT, 3, Serialized)
    {
        If (And (Arg1, 0x02))
        {
            If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
            {
                Return (0x0B)
            }

            If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, One)))
            {
                Return (0x09)
            }
        }

        Return (0x04)
    }

    Scope (_TZ)
    {
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Return (VFN0) /* \VFN0 */
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (One, VFN0) /* \VFN0 */
                If (ECON)
                {
                    If (DTSP)
                    {
                        \_SB.SECB (0x9C, 0x05)
                    }
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Zero, VFN0) /* \VFN0 */
                If (ECON)
                {
                    If (DTSP)
                    {
                        \_SB.SECB (0x9C, One)
                    }
                }
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B") /* Fan (Thermal Solution) */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        ThermalZone (TZ00)
        {
            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
            {
                Return (Add (0x0AAC, Multiply (ACTT, 0x0A)))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List, x=0-9
            {
                FAN0
            })
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (Add (0x0AAC, Multiply (CRTT, 0x0A)))
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, CTYP) /* \CTYP */
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (ECON)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.CTMP, Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                    Else
                    {
                        Return (0x0C1C)
                    }
                }

                Return (0x0C1C)
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (MPEN)
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (Add (0x0AAC, Multiply (PSVT, 0x0A)))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (TC1V) /* \TC1V */
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (TC2V) /* \TC2V */
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (TSPV) /* \TSPV */
            }
        }

        ThermalZone (TZ01)
        {
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (Add (0x0AAC, Multiply (CRTT, 0x0A)))
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (DTSE)
                {
                    If (LGreaterEqual (DTS1, DTS2))
                    {
                        Return (Add (0x0AAC, Multiply (DTS1, 0x0A)))
                    }

                    Return (Add (0x0AAC, Multiply (DTS2, 0x0A)))
                }

                If (ECON)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.CTMP, Local0)
                    If (LNotEqual (Local0, 0xFF))
                    {
                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                    Else
                    {
                        Return (0x0C1C)
                    }
                }

                Return (0x0C1C)
            }
        }
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (DTSE)
            {
                TRAP (0x47)
            }

            Store (0x07D0, OSYS) /* \OSYS */
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS) /* \OSYS */
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS) /* \OSYS */
                    Store (0x08, TPOS) /* \TPOS */
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS) /* \OSYS */
                    Store (0x10, TPOS) /* \TPOS */
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS) /* \OSYS */
                    Store (0x40, TPOS) /* \TPOS */
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS) /* \OSYS */
                }

                If (LAnd (MPEN, LEqual (OSYS, 0x07D1)))
                {
                    TRAP (0x3D)
                }
            }
            ElseIf (LOr (LEqual (SizeOf (_OS), 0x14), LEqual (SizeOf (_OS), 0x05)))
            {
                Store (0x07D0, OSYS) /* \OSYS */
                Store (0x04, TPOS) /* \TPOS */
            }
            ElseIf (LEqual (SizeOf (_OS), 0x27))
            {
                Store (0x07CF, OSYS) /* \OSYS */
                Store (0x02, TPOS) /* \TPOS */
            }
            ElseIf (LEqual (SizeOf (_OS), 0x12))
            {
                Store (0x07CE, OSYS) /* \OSYS */
                Store (One, TPOS) /* \TPOS */
            }
            Else
            {
                Store (0x07CD, OSYS) /* \OSYS */
                Store (Zero, TPOS) /* \TPOS */
            }

            If (LLessEqual (OSYS, 0x07CF))
            {
                Store (One, ECON) /* \ECON */
                Store (SECB (0x85, 0x02), Local0)
                If (LEqual (Local0, One))
                {
                    Store (One, PWRS) /* \PWRS */
                }
                Else
                {
                    Store (Zero, PWRS) /* \PWRS */
                }
            }

            If (LGreaterEqual (OSYS, 0x07D0))
            {
                Store (One, PRM0) /* \PRM0 */
                If (LGreaterEqual (OSYS, 0x07D1))
                {
                    Store (0x03, PRM0) /* \PRM0 */
                }
            }
            Else
            {
                Store (Zero, PRM0) /* \PRM0 */
            }

            TRAP (0x32)
            If (LEqual (OSYS, 0x07D6))
            {
                SECB (0xA6, One)
            }
            Else
            {
                SECB (0xA6, Zero)
            }
        }

        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (LEqual (ECON, Zero))
                {
                    Store (SECB (0x85, 0x02), Local0)
                }
                Else
                {
                    Store (^^PCI0.LPCB.H_EC.ACEX, Local0)
                }

                Return (Local0)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (ECON, Zero))
                {
                    Store (0x0F, Local0)
                }
                ElseIf (LEqual (^^PCI0.LPCB.H_EC.ACEX, Zero))
                {
                    Store (0x1F, Local0)
                }
                Else
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }
        }

        Device (BAT1)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BATI, Package (0x0D)
            {
                One, 
                Ones, 
                Ones, 
                One, 
                Ones, 
                0x03, 
                0x0A, 
                One, 
                One, 
                "Unknown", 
                "Unknown", 
                "Unknown", 
                "Unknown"
            })
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If (LEqual (ECON, Zero))
                {
                    Store (SECW (0x82, 0xB0, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, One))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, One))
                    }

                    Store (SECW (0x82, 0xB2, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x02))
                    }

                    Store (SECW (0x82, 0xB4, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, 0x04))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x04))
                    }

                    Store (Zero, Index (BATI, 0x05))
                    Store (SECW (0x82, 0xB6, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Zero, Index (BATI, 0x06))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x06))
                    }
                }
                Else
                {
                    Store (^^PCI0.LPCB.H_EC.B1DA, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, One))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, One))
                    }

                    Store (^^PCI0.LPCB.H_EC.B1DF, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x02))
                    }

                    Store (^^PCI0.LPCB.H_EC.B1DV, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, 0x04))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x04))
                    }

                    Store (Zero, Index (BATI, 0x05))
                    Store (^^PCI0.LPCB.H_EC.B1DL, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (BATI, 0x06))
                    }
                    Else
                    {
                        Store (Local0, Index (BATI, 0x06))
                    }
                }

                Store ("", Index (BATI, 0x09))
                Store ("", Index (BATI, 0x0A))
                Store ("LION", Index (BATI, 0x0B))
                Store ("SAMSUNG Electronics", Index (BATI, 0x0C))
                Return (BATI) /* \_SB_.BAT1.BATI */
            }

            Name (STAT, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
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

                    Store (Local0, Index (STAT, Zero))
                    Store (SECW (0x82, 0xA4, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, One))
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x8000))
                        {
                            XOr (Local0, 0xFFFF, Local0)
                            Increment (Local0)
                        }

                        Store (Local0, Index (STAT, One))
                    }

                    Store (SECW (0x82, 0xA2, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (STAT, 0x02))
                    }

                    Store (SECW (0x82, 0xA6, Zero), Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, 0x03))
                    }
                    Else
                    {
                        Store (Local0, Index (STAT, 0x03))
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

                    Store (Local0, Index (STAT, Zero))
                    Store (^^PCI0.LPCB.H_EC.B1PR, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, One))
                    }
                    Else
                    {
                        If (LGreaterEqual (Local0, 0x8000))
                        {
                            XOr (Local0, 0xFFFF, Local0)
                            Increment (Local0)
                        }

                        Store (Local0, Index (STAT, One))
                    }

                    Store (^^PCI0.LPCB.H_EC.B1RA, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, 0x02))
                    }
                    Else
                    {
                        Store (Local0, Index (STAT, 0x02))
                    }

                    Store (^^PCI0.LPCB.H_EC.B1VO, Local0)
                    ShiftLeft (Local0, 0x08, Local1)
                    And (Local1, 0xFF00, Local1)
                    ShiftRight (Local0, 0x08, Local0)
                    Or (Local0, Local1, Local0)
                    If (LEqual (Local0, 0xFFFF))
                    {
                        Store (Ones, Index (STAT, 0x03))
                    }
                    Else
                    {
                        Store (Local0, Index (STAT, 0x03))
                    }
                }

                Return (STAT) /* \_SB_.BAT1.STAT */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (ECON, Zero))
                {
                    If (LEqual (SECB (0x85, Zero), One))
                    {
                        Store (0x1F, Local0)
                    }
                    Else
                    {
                        Store (0x0F, Local0)
                    }
                }
                ElseIf (LEqual (^^PCI0.LPCB.H_EC.B1EX, One))
                {
                    Store (0x1F, Local0)
                }
                Else
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                Return (LIDS) /* \LIDS */
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x1D, 
                0x04
            })
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
        }

        Mutex (MSEC, 0x00)
        Method (SECS, 1, Serialized)
        {
            Acquire (MSEC, 0xFFFF)
            Store (Arg0, SECI) /* \SECI */
            Store (Zero, TRP1) /* \TRP1 */
            Release (MSEC)
        }

        Method (SECB, 2, Serialized)
        {
            Acquire (MSEC, 0xFFFF)
            Store (Arg0, SECI) /* \SECI */
            Store (Arg1, DB00) /* \DB00 */
            Store (Zero, TRP1) /* \TRP1 */
            Store (DB00, Local0)
            Release (MSEC)
            Return (Local0)
        }

        Method (SECW, 3, Serialized)
        {
            Acquire (MSEC, 0xFFFF)
            Store (Arg0, SECI) /* \SECI */
            Store (Arg1, DB00) /* \DB00 */
            Store (Arg2, DW00) /* \DW00 */
            Store (Zero, TRP1) /* \TRP1 */
            Store (DW00, Local1)
            Release (MSEC)
            Return (Local1)
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x50), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x51), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x52), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x53), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x54), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x55), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x56), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x57), 
                    ,   7, 
                HENA,   1, 
                Offset (0x5C), 
                    ,   3, 
                TOUD,   5
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEC00000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y00._LEN, C0LN)  // _LEN: Length
                    Store (Zero, C0LN) /* \_SB_.PCI0._CRS.C0LN */
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y00._RW, C0RW)  // _RW_: Read-Write Status
                    Store (Zero, C0RW) /* \_SB_.PCI0._CRS.C0RW */
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C4LN)  // _LEN: Length
                    Store (Zero, C4LN) /* \_SB_.PCI0._CRS.C4LN */
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C4RW)  // _RW_: Read-Write Status
                    Store (Zero, C4RW) /* \_SB_.PCI0._CRS.C4RW */
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C8LN)  // _LEN: Length
                    Store (Zero, C8LN) /* \_SB_.PCI0._CRS.C8LN */
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C8RW)  // _RW_: Read-Write Status
                    Store (Zero, C8RW) /* \_SB_.PCI0._CRS.C8RW */
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, CCLN)  // _LEN: Length
                    Store (Zero, CCLN) /* \_SB_.PCI0._CRS.CCLN */
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, CCRW)  // _RW_: Read-Write Status
                    Store (Zero, CCRW) /* \_SB_.PCI0._CRS.CCRW */
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, D0LN)  // _LEN: Length
                    Store (Zero, D0LN) /* \_SB_.PCI0._CRS.D0LN */
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, D0RW)  // _RW_: Read-Write Status
                    Store (Zero, D0RW) /* \_SB_.PCI0._CRS.D0RW */
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D4LN)  // _LEN: Length
                    Store (Zero, D4LN) /* \_SB_.PCI0._CRS.D4LN */
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D4RW)  // _RW_: Read-Write Status
                    Store (Zero, D4RW) /* \_SB_.PCI0._CRS.D4RW */
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D8LN)  // _LEN: Length
                    Store (Zero, D8LN) /* \_SB_.PCI0._CRS.D8LN */
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D8RW)  // _RW_: Read-Write Status
                    Store (Zero, D8RW) /* \_SB_.PCI0._CRS.D8RW */
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, DCLN)  // _LEN: Length
                    Store (Zero, DCLN) /* \_SB_.PCI0._CRS.DCLN */
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, DCRW)  // _RW_: Read-Write Status
                    Store (Zero, DCRW) /* \_SB_.PCI0._CRS.DCRW */
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, E0LN)  // _LEN: Length
                    Store (Zero, E0LN) /* \_SB_.PCI0._CRS.E0LN */
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, E0RW)  // _RW_: Read-Write Status
                    Store (Zero, E0RW) /* \_SB_.PCI0._CRS.E0RW */
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E4LN)  // _LEN: Length
                    Store (Zero, E4LN) /* \_SB_.PCI0._CRS.E4LN */
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E4RW)  // _RW_: Read-Write Status
                    Store (Zero, E4RW) /* \_SB_.PCI0._CRS.E4RW */
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E8LN)  // _LEN: Length
                    Store (Zero, E8LN) /* \_SB_.PCI0._CRS.E8LN */
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E8RW)  // _RW_: Read-Write Status
                    Store (Zero, E8RW) /* \_SB_.PCI0._CRS.E8RW */
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, ECLN)  // _LEN: Length
                    Store (Zero, ECLN) /* \_SB_.PCI0._CRS.ECLN */
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, ECRW)  // _RW_: Read-Write Status
                    Store (Zero, ECRW) /* \_SB_.PCI0._CRS.ECRW */
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, F0LN)  // _LEN: Length
                    Store (Zero, F0LN) /* \_SB_.PCI0._CRS.F0LN */
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, F0RW)  // _RW_: Read-Write Status
                    Store (Zero, F0RW) /* \_SB_.PCI0._CRS.F0RW */
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, M1LN)  // _LEN: Length
                ShiftLeft (TOUD, 0x1B, M1MN) /* \_SB_.PCI0._CRS.M1MN */
                Add (Subtract (M1MX, M1MN), One, M1LN) /* \_SB_.PCI0._CRS.M1LN */
                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (Package (0x0F)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001BFFFF, 
                            Zero, 
                            Zero, 
                            0x16
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            Zero, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            One, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            Zero, 
                            Zero, 
                            0x17
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            One, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x03, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            Zero, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            One, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            0x03, 
                            Zero, 
                            0x10
                        }
                    })
                }
                Else
                {
                    Return (Package (0x0F)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0002FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001BFFFF, 
                            Zero, 
                            ^LPCB.LNKG, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            Zero, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            One, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            Zero, 
                            ^LPCB.LNKH, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            One, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x03, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            Zero, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            One, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            0x03, 
                            ^LPCB.LNKA, 
                            Zero
                        }
                    })
                }
            }

            Device (PDRC)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE0000000,         // Address Base
                        0x10000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED14000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED18000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED19000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED1C000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED20000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED40000,         // Address Base
                        0x00005000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED45000,         // Address Base
                        0x0004B000,         // Address Length
                        )
                })
                Name (BUF1, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE0000000,         // Address Base
                        0x10000000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED14000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED18000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED19000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED1C000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED20000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED45000,         // Address Base
                        0x0004B000,         // Address Length
                        )
                })
                Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                {
                    Return (BUF1) /* \_SB_.PCI0.PDRC.BUF1 */
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    And (Arg0, 0x03, DSEN) /* \DSEN */
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            Ones
                        })
                        Or (0x00010000, DID1, Index (TMP1, Zero))
                        Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            Ones, 
                            Ones
                        })
                        Or (0x00010000, DID1, Index (TMP2, Zero))
                        Or (0x00010000, DID2, Index (TMP2, One))
                        Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Or (0x00010000, DID1, Index (TMP3, Zero))
                        Or (0x00010000, DID2, Index (TMP3, One))
                        Or (0x00010000, DID3, Index (TMP3, 0x02))
                        Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Or (0x00010000, DID1, Index (TMP4, Zero))
                        Or (0x00010000, DID2, Index (TMP4, One))
                        Or (0x00010000, DID3, Index (TMP4, 0x02))
                        Or (0x00010000, DID4, Index (TMP4, 0x03))
                        Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                    }

                    Name (TMP5, Package (0x05)
                    {
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones, 
                        Ones
                    })
                    Or (0x00010000, DID1, Index (TMP5, Zero))
                    Or (0x00010000, DID2, Index (TMP5, One))
                    Or (0x00010000, DID3, Index (TMP5, 0x02))
                    Or (0x00010000, DID4, Index (TMP5, 0x03))
                    Or (0x00010000, DID5, Index (TMP5, 0x04))
                    Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        Return (And (0xFFFF, DID1))
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        TRAP (One)
                        If (And (CSTE, One))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, One))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE) /* \CSTE */
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        Return (And (0xFFFF, DID2))
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        TRAP (One)
                        If (And (CSTE, 0x02))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, 0x02))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE) /* \CSTE */
                        }
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        Return (And (0xFFFF, DID3))
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        TRAP (One)
                        If (And (CSTE, 0x04))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, 0x04))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE) /* \CSTE */
                        }
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        Return (And (0xFFFF, DID4))
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        TRAP (One)
                        If (And (CSTE, 0x08))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, 0x08))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE) /* \CSTE */
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        Return (And (0xFFFF, DID5))
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        TRAP (One)
                        If (And (CSTE, 0x10))
                        {
                            Return (0x1F)
                        }

                        Return (0x1D)
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        If (And (NSTE, 0x10))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE) /* \CSTE */
                        }
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x04
                })
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                OperationRegion (P1CS, PCI_Config, 0x40, 0x0100)
                Field (P1CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x1A), 
                    ABP1,   1, 
                        ,   2, 
                    PDC1,   1, 
                        ,   2, 
                    PDS1,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP1,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Device (PXS1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKD, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                OperationRegion (P2CS, PCI_Config, 0x40, 0x0100)
                Field (P2CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x1A), 
                    ABP2,   1, 
                        ,   2, 
                    PDC2,   1, 
                        ,   2, 
                    PDS2,   1, 
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP2,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Device (PXS2)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x10
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKA, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN) /* \_SB_.PCI0.USB1.U1EN */
                    }
                    Else
                    {
                        Store (Zero, U1EN) /* \_SB_.PCI0.USB1.U1EN */
                    }
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (U2CS, PCI_Config, 0xC4, 0x04)
                Field (U2CS, DWordAcc, NoLock, Preserve)
                {
                    U2EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U2EN) /* \_SB_.PCI0.USB2.U2EN */
                    }
                    Else
                    {
                        Store (Zero, U2EN) /* \_SB_.PCI0.USB2.U2EN */
                    }
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (U2CS, PCI_Config, 0xC4, 0x04)
                Field (U2CS, DWordAcc, NoLock, Preserve)
                {
                    U3EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U3EN) /* \_SB_.PCI0.USB3.U3EN */
                    }
                    Else
                    {
                        Store (Zero, U3EN) /* \_SB_.PCI0.USB3.U3EN */
                    }
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0003)  // _ADR: Address
                OperationRegion (U4CS, PCI_Config, 0xC4, 0x04)
                Field (U4CS, DWordAcc, NoLock, Preserve)
                {
                    U4EN,   2
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, U4EN) /* \_SB_.PCI0.USB4.U4EN */
                    }
                    Else
                    {
                        Store (Zero, U4EN) /* \_SB_.PCI0.USB4.U4EN */
                    }
                }
            }

            Device (USB7)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
            }

            Device (PCIB)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Device (LANC)
                {
                    Name (_ADR, 0x00050000)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x0B, 
                        0x04
                    })
                }

                Device (CDB0)
                {
                    Name (_ADR, 0x00090000)  // _ADR: Address
                    OperationRegion (CBD0, PCI_Config, Zero, 0xF0)
                    Field (CBD0, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        CD3C,   8, 
                        Offset (0x44), 
                        CD44,   32, 
                        Offset (0xE0), 
                        PWST,   8, 
                        PMES,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (CD3C, 0xFF, CD3C) /* \_SB_.PCI0.PCIB.CDB0.CD3C */
                        Store (Zero, CD44) /* \_SB_.PCI0.PCIB.CDB0.CD44 */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (PWST, 0xFC, PWST) /* \_SB_.PCI0.PCIB.CDB0.PWST */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (PWST, 0x03, PWST) /* \_SB_.PCI0.PCIB.CDB0.PWST */
                    }
                }

                Device (OHCI)
                {
                    Name (_ADR, 0x00090001)  // _ADR: Address
                    OperationRegion (OHCI, PCI_Config, Zero, 0xF0)
                    Field (OHCI, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        OH3C,   8, 
                        Offset (0xE0), 
                        OHE0,   8, 
                        PMES,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (OH3C, 0xFF, OH3C) /* \_SB_.PCI0.PCIB.OHCI.OH3C */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (OHE0, 0xFC, OHE0) /* \_SB_.PCI0.PCIB.OHCI.OHE0 */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (OHE0, 0x03, OHE0) /* \_SB_.PCI0.PCIB.OHCI.OHE0 */
                    }
                }

                Device (SDHC)
                {
                    Name (_ADR, 0x00090002)  // _ADR: Address
                    OperationRegion (SDHC, PCI_Config, Zero, 0xF0)
                    Field (SDHC, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        SD3C,   8, 
                        Offset (0x84), 
                        SD84,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (SD3C, 0xFF, SD3C) /* \_SB_.PCI0.PCIB.SDHC.SD3C */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (SD84, 0xFC, SD84) /* \_SB_.PCI0.PCIB.SDHC.SD84 */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (SD84, 0x03, SD84) /* \_SB_.PCI0.PCIB.SDHC.SD84 */
                    }
                }

                Device (MMHC)
                {
                    Name (_ADR, 0x00090003)  // _ADR: Address
                    OperationRegion (MMHC, PCI_Config, Zero, 0xF0)
                    Field (MMHC, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        MM3C,   8, 
                        Offset (0x84), 
                        MM84,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (MM3C, 0xFF, MM3C) /* \_SB_.PCI0.PCIB.MMHC.MM3C */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (MM84, 0xFC, MM84) /* \_SB_.PCI0.PCIB.MMHC.MM84 */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (MM84, 0x03, MM84) /* \_SB_.PCI0.PCIB.MMHC.MM84 */
                    }
                }

                Device (MSHC)
                {
                    Name (_ADR, 0x00090004)  // _ADR: Address
                    OperationRegion (MSHC, PCI_Config, Zero, 0xF0)
                    Field (MSHC, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        MS3C,   8, 
                        Offset (0x84), 
                        MS84,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (MS3C, 0xFF, MS3C) /* \_SB_.PCI0.PCIB.MSHC.MS3C */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (MS84, 0xFC, MS84) /* \_SB_.PCI0.PCIB.MSHC.MS84 */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (MS84, 0x03, MS84) /* \_SB_.PCI0.PCIB.MSHC.MS84 */
                    }
                }

                Device (XDHC)
                {
                    Name (_ADR, 0x00090005)  // _ADR: Address
                    OperationRegion (XDHC, PCI_Config, Zero, 0xF0)
                    Field (XDHC, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x3C), 
                        XD3C,   8, 
                        Offset (0x84), 
                        XD84,   8
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        Or (XD3C, 0xFF, XD3C) /* \_SB_.PCI0.PCIB.XDHC.XD3C */
                    }

                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        And (XD84, 0xFC, XD84) /* \_SB_.PCI0.PCIB.XDHC.XD84 */
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        Or (XD84, 0x03, XD84) /* \_SB_.PCI0.PCIB.XDHC.XD84 */
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0x0005FFFF, 
                                Zero, 
                                Zero, 
                                0x16
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                Zero, 
                                Zero, 
                                0x14
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                One, 
                                Zero, 
                                0x15
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                0x02, 
                                Zero, 
                                0x16
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0x0005FFFF, 
                                Zero, 
                                ^^LPCB.LNKG, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                Zero, 
                                ^^LPCB.LNKE, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                One, 
                                ^^LPCB.LNKF, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0x0009FFFF, 
                                0x02, 
                                ^^LPCB.LNKG, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x20), 
                    PARC,   8, 
                    PBRC,   8, 
                    PCRC,   8, 
                    PDRC,   8, 
                    Offset (0x28), 
                    PERC,   8, 
                    PFRC,   8, 
                    PGRC,   8, 
                    PHRC,   8, 
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PARC) /* \_SB_.PCI0.LPCB.PARC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {11}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLA, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLA, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKA._CRS.IRQ0 */
                        ShiftLeft (One, And (PARC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKA._CRS.IRQ0 */
                        Return (RTLA) /* \_SB_.PCI0.LPCB.LNKA._CRS.RTLA */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PARC) /* \_SB_.PCI0.LPCB.PARC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PARC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PBRC) /* \_SB_.PCI0.LPCB.PBRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {10}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLB, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLB, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKB._CRS.IRQ0 */
                        ShiftLeft (One, And (PBRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKB._CRS.IRQ0 */
                        Return (RTLB) /* \_SB_.PCI0.LPCB.LNKB._CRS.RTLB */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PBRC) /* \_SB_.PCI0.LPCB.PBRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PBRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PCRC) /* \_SB_.PCI0.LPCB.PCRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLC, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLC, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKC._CRS.IRQ0 */
                        ShiftLeft (One, And (PCRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKC._CRS.IRQ0 */
                        Return (RTLC) /* \_SB_.PCI0.LPCB.LNKC._CRS.RTLC */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PCRC) /* \_SB_.PCI0.LPCB.PCRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PCRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PDRC) /* \_SB_.PCI0.LPCB.PDRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLD, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLD, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKD._CRS.IRQ0 */
                        ShiftLeft (One, And (PDRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKD._CRS.IRQ0 */
                        Return (RTLD) /* \_SB_.PCI0.LPCB.LNKD._CRS.RTLD */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PDRC) /* \_SB_.PCI0.LPCB.PDRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PDRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PERC) /* \_SB_.PCI0.LPCB.PERC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {11}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLE, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLE, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKE._CRS.IRQ0 */
                        ShiftLeft (One, And (PERC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKE._CRS.IRQ0 */
                        Return (RTLE) /* \_SB_.PCI0.LPCB.LNKE._CRS.RTLE */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PERC) /* \_SB_.PCI0.LPCB.PERC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PERC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PFRC) /* \_SB_.PCI0.LPCB.PFRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {10}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLF, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLF, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKF._CRS.IRQ0 */
                        ShiftLeft (One, And (PFRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKF._CRS.IRQ0 */
                        Return (RTLF) /* \_SB_.PCI0.LPCB.LNKF._CRS.RTLF */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PFRC) /* \_SB_.PCI0.LPCB.PFRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PFRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PGRC) /* \_SB_.PCI0.LPCB.PGRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLG, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLG, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKG._CRS.IRQ0 */
                        ShiftLeft (One, And (PGRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKG._CRS.IRQ0 */
                        Return (RTLG) /* \_SB_.PCI0.LPCB.LNKG._CRS.RTLG */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PGRC) /* \_SB_.PCI0.LPCB.PGRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PGRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x08)  // _UID: Unique ID
                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        Store (0x80, PHRC) /* \_SB_.PCI0.LPCB.PHRC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {5}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLH, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLH, One, IRQ0)
                        Store (Zero, IRQ0) /* \_SB_.PCI0.LPCB.LNKH._CRS.IRQ0 */
                        ShiftLeft (One, And (PHRC, 0x0F), IRQ0) /* \_SB_.PCI0.LPCB.LNKH._CRS.IRQ0 */
                        Return (RTLH) /* \_SB_.PCI0.LPCB.LNKH._CRS.RTLH */
                    }

                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Store (Local0, PHRC) /* \_SB_.PCI0.LPCB.PHRC */
                    }

                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (And (PHRC, 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }

                Device (H_EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0062,             // Range Minimum
                                0x0062,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0066,             // Range Minimum
                                0x0066,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                        })
                        Return (BFFR) /* \_SB_.PCI0.LPCB.H_EC._CRS.BFFR */
                    }

                    OperationRegion (ECR, EmbeddedControl, Zero, 0xFF)
                    Field (ECR, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x18), 
                        SPTR,   8, 
                        SSTS,   8, 
                        SADR,   8, 
                        SCMD,   8, 
                        SBFR,   256, 
                        SCNT,   8, 
                        Offset (0x80), 
                        B1EX,   1, 
                            ,   1, 
                        ACEX,   1, 
                        Offset (0x81), 
                        SWBE,   1, 
                        DCBE,   1, 
                        Offset (0x82), 
                        WLST,   1, 
                        Offset (0x83), 
                        LIDS,   1, 
                        Offset (0x84), 
                        B1ST,   8, 
                        Offset (0x86), 
                        BRIT,   8, 
                        Offset (0xA0), 
                        B1RP,   16, 
                        B1RA,   16, 
                        B1PR,   16, 
                        B1VO,   16, 
                        Offset (0xB0), 
                        B1DA,   16, 
                        B1DF,   16, 
                        B1DV,   16, 
                        B1DL,   16, 
                        Offset (0xC0), 
                        CTMP,   8, 
                        Offset (0xC7), 
                        TSSM,   8, 
                        Offset (0xD0), 
                        B1TI,   16, 
                        B1SE,   16, 
                        B1CR,   16, 
                        B1TM,   16
                    }

                    Device (MBTN)
                    {
                        Name (_HID, EisaId ("PNP0C32"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (LEqual (OSYS, 0x07D6))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (GHID, 0, NotSerialized)
                        {
                            If (DMED)
                            {
                                Notify (MBTN, 0x02) // Device Wake
                            }

                            Return (Buffer (One)
                            {
                                 0x01                                             // .
                            })
                        }
                    }

                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                        {
                            Store (One, ECON) /* \ECON */
                            Store (ACEX, PWRS) /* \PWRS */
                        }
                    }

                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Store (One, PWRS) /* \PWRS */
                        Notify (ADP1, 0x80) // Status Change
                        Store (0x2B, SMIF) /* \SMIF */
                        Store (Zero, TRP0) /* \TRP0 */
                    }

                    Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Store (Zero, PWRS) /* \PWRS */
                        Notify (ADP1, 0x80) // Status Change
                        Store (0x2B, SMIF) /* \SMIF */
                        Store (Zero, TRP0) /* \TRP0 */
                    }

                    Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (BAT1, 0x80) // Status Change
                        Notify (BAT1, 0x81) // Information Change
                    }

                    Method (_Q54, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (BAT1, 0x80) // Status Change
                        Notify (BAT1, 0x81) // Information Change
                    }

                    Method (_Q5B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (SLPB, 0x80) // Status Change
                    }

                    Method (_Q5C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x86)
                    }

                    Method (_Q5D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (IGDS)
                        {
                            Store (0x02, TLST) /* \TLST */
                        }

                        HKDS (0x0A)
                    }

                    Method (_Q5E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Store (LIDS, \LIDS)
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q5F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Store (LIDS, \LIDS)
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (LEqual (B1EX, One))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (LEqual (B1EX, One))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x88)
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x89)
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_TZ.TZ00, 0x80) // Thermal Status Change
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (LEqual (B1EX, One))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8A)
                    }

                    Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8B)
                    }

                    Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q6B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q6F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (LEqual (GSCI, One))
                        {
                            Store (DIAG, Local1)
                            If (Local1)
                            {
                                Store (Zero, TZON) /* \TZON */
                                CPRN ()
                            }
                            Else
                            {
                                Store (TSSM, Local0)
                                Store (Local0, TZON) /* \TZON */
                                CPRN ()
                            }
                        }
                        ElseIf (LEqual (GSCI, 0x02))
                        {
                            CPRN ()
                        }
                        ElseIf (LEqual (GSCI, 0x03))
                        {
                            If (MPEN)
                            {
                                Store (0x04, GSCI) /* \GSCI */
                            }

                            If (LGreaterEqual (RCNT, One))
                            {
                                If (LLess (RCST, CCST))
                                {
                                    CCRN ()
                                }
                            }
                            Else
                            {
                                CCRN ()
                            }
                        }
                    }

                    Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (MBTN, 0x80) // Status Change
                    }

                    Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x87)
                    }

                    Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Store (One, GSCI) /* \GSCI */
                        If (LLessEqual (TSSM, 0x02))
                        {
                            Store (TSSM, Local0)
                            Store (Local0, TZON) /* \TZON */
                            Store (DIAG, Local1)
                            If (Local1)
                            {
                                Sleep (0x64)
                            }
                            Else
                            {
                                CPRN ()
                            }
                        }
                        Else
                        {
                            Store (Zero, TZON) /* \TZON */
                            CPRN ()
                        }
                    }

                    Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8C)
                    }

                    Method (_Q75, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8D)
                    }

                    Method (_Q76, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x94)
                    }

                    Method (_Q77, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x95)
                    }

                    Method (_Q78, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q79, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8E)
                    }

                    Method (_Q7A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x8F)
                    }

                    Method (_Q7B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x90)
                    }

                    Method (_Q7C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x91)
                    }

                    Method (_Q7D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x92)
                    }

                    Method (_Q7E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        SECS (0x93)
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (ADP1, 0x80) // Status Change
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0E)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0E._BAS, HPT0)  // _BAS: Base Address
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0) /* \_SB_.PCI0.LPCB.HPET._CRS.HPT0 */
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0) /* \_SB_.PCI0.LPCB.HPET._CRS.HPT0 */
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0) /* \_SB_.PCI0.LPCB.HPET._CRS.HPT0 */
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x70,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                        IO (Decode16,
                            0x1640,             // Range Minimum
                            0x1640,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0900,             // Range Minimum
                            0x0900,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                        IO (Decode16,
                            0x1640,             // Range Minimum
                            0x1640,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF1) /* \_SB_.PCI0.LPCB.LDRC.BUF1 */
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }
            }

            Device (PATA)
            {
                Name (_ADR, 0x001F0001)  // _ADR: Address
                OperationRegion (PACS, PCI_Config, 0x40, 0xC0)
                Field (PACS, DWordAcc, NoLock, Preserve)
                {
                    PRIT,   16, 
                    Offset (0x04), 
                    PSIT,   4, 
                    Offset (0x08), 
                    SYNC,   4, 
                    Offset (0x0A), 
                    SDT0,   2, 
                        ,   2, 
                    SDT1,   2, 
                    Offset (0x14), 
                    ICR0,   4, 
                    ICR1,   4, 
                    ICR2,   4, 
                    ICR3,   4, 
                    ICR4,   4, 
                    ICR5,   4
                }

                Device (PRID)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
                    {
                        Name (PBUF, Buffer (0x14)
                        {
                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                        })
                        CreateDWordField (PBUF, Zero, PIO0)
                        CreateDWordField (PBUF, 0x04, DMA0)
                        CreateDWordField (PBUF, 0x08, PIO1)
                        CreateDWordField (PBUF, 0x0C, DMA1)
                        CreateDWordField (PBUF, 0x10, FLAG)
                        Store (GETP (PRIT), PIO0) /* \_SB_.PCI0.PATA.PRID._GTM.PIO0 */
                        Store (GDMA (And (SYNC, One), And (ICR3, One), And (ICR0, 
                            One), SDT0, And (ICR1, One)), DMA0) /* \_SB_.PCI0.PATA.PRID._GTM.DMA0 */
                        If (LEqual (DMA0, Ones))
                        {
                            Store (PIO0, DMA0) /* \_SB_.PCI0.PATA.PRID._GTM.DMA0 */
                        }

                        If (And (PRIT, 0x4000))
                        {
                            If (LEqual (And (PRIT, 0x90), 0x80))
                            {
                                Store (0x0384, PIO1) /* \_SB_.PCI0.PATA.PRID._GTM.PIO1 */
                            }
                            Else
                            {
                                Store (GETT (PSIT), PIO1) /* \_SB_.PCI0.PATA.PRID._GTM.PIO1 */
                            }
                        }
                        Else
                        {
                            Store (Ones, PIO1) /* \_SB_.PCI0.PATA.PRID._GTM.PIO1 */
                        }

                        Store (GDMA (And (SYNC, 0x02), And (ICR3, 0x02), And (ICR0, 
                            0x02), SDT1, And (ICR1, 0x02)), DMA1) /* \_SB_.PCI0.PATA.PRID._GTM.DMA1 */
                        If (LEqual (DMA1, Ones))
                        {
                            Store (PIO1, DMA1) /* \_SB_.PCI0.PATA.PRID._GTM.DMA1 */
                        }

                        Store (GETF (And (SYNC, One), And (SYNC, 0x02), PRIT), FLAG) /* \_SB_.PCI0.PATA.PRID._GTM.FLAG */
                        If (And (LEqual (PIO0, Ones), LEqual (DMA0, Ones)))
                        {
                            Store (0x78, PIO0) /* \_SB_.PCI0.PATA.PRID._GTM.PIO0 */
                            Store (0x14, DMA0) /* \_SB_.PCI0.PATA.PRID._GTM.DMA0 */
                            Store (0x03, FLAG) /* \_SB_.PCI0.PATA.PRID._GTM.FLAG */
                        }

                        Return (PBUF) /* \_SB_.PCI0.PATA.PRID._GTM.PBUF */
                    }

                    Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
                    {
                        CreateDWordField (Arg0, Zero, PIO0)
                        CreateDWordField (Arg0, 0x04, DMA0)
                        CreateDWordField (Arg0, 0x08, PIO1)
                        CreateDWordField (Arg0, 0x0C, DMA1)
                        CreateDWordField (Arg0, 0x10, FLAG)
                        If (LEqual (SizeOf (Arg1), 0x0200))
                        {
                            And (PRIT, 0x40F0, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            And (SYNC, 0x02, SYNC) /* \_SB_.PCI0.PATA.SYNC */
                            Store (Zero, SDT0) /* \_SB_.PCI0.PATA.SDT0 */
                            And (ICR0, 0x02, ICR0) /* \_SB_.PCI0.PATA.ICR0 */
                            And (ICR1, 0x02, ICR1) /* \_SB_.PCI0.PATA.ICR1 */
                            And (ICR3, 0x02, ICR3) /* \_SB_.PCI0.PATA.ICR3 */
                            And (ICR5, 0x02, ICR5) /* \_SB_.PCI0.PATA.ICR5 */
                            CreateWordField (Arg1, 0x62, W490)
                            CreateWordField (Arg1, 0x6A, W530)
                            CreateWordField (Arg1, 0x7E, W630)
                            CreateWordField (Arg1, 0x80, W640)
                            CreateWordField (Arg1, 0xB0, W880)
                            CreateWordField (Arg1, 0xBA, W930)
                            Or (PRIT, 0x8004, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            If (LAnd (And (FLAG, 0x02), And (W490, 0x0800)))
                            {
                                Or (PRIT, 0x02, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            }

                            Or (PRIT, SETP (PIO0, W530, W640), PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            If (And (FLAG, One))
                            {
                                Or (SYNC, One, SYNC) /* \_SB_.PCI0.PATA.SYNC */
                                Store (SDMA (DMA0), SDT0) /* \_SB_.PCI0.PATA.SDT0 */
                                If (LLess (DMA0, 0x1E))
                                {
                                    Or (ICR3, One, ICR3) /* \_SB_.PCI0.PATA.ICR3 */
                                }

                                If (LLess (DMA0, 0x3C))
                                {
                                    Or (ICR0, One, ICR0) /* \_SB_.PCI0.PATA.ICR0 */
                                }

                                If (And (W930, 0x2000))
                                {
                                    Or (ICR1, One, ICR1) /* \_SB_.PCI0.PATA.ICR1 */
                                }
                            }
                        }

                        If (LEqual (SizeOf (Arg2), 0x0200))
                        {
                            And (PRIT, 0x3F0F, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            Store (Zero, PSIT) /* \_SB_.PCI0.PATA.PSIT */
                            And (SYNC, One, SYNC) /* \_SB_.PCI0.PATA.SYNC */
                            Store (Zero, SDT1) /* \_SB_.PCI0.PATA.SDT1 */
                            And (ICR0, One, ICR0) /* \_SB_.PCI0.PATA.ICR0 */
                            And (ICR1, One, ICR1) /* \_SB_.PCI0.PATA.ICR1 */
                            And (ICR3, One, ICR3) /* \_SB_.PCI0.PATA.ICR3 */
                            And (ICR5, One, ICR5) /* \_SB_.PCI0.PATA.ICR5 */
                            CreateWordField (Arg2, 0x62, W491)
                            CreateWordField (Arg2, 0x6A, W531)
                            CreateWordField (Arg2, 0x7E, W631)
                            CreateWordField (Arg2, 0x80, W641)
                            CreateWordField (Arg2, 0xB0, W881)
                            CreateWordField (Arg2, 0xBA, W931)
                            Or (PRIT, 0x8040, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            If (LAnd (And (FLAG, 0x08), And (W491, 0x0800)))
                            {
                                Or (PRIT, 0x20, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                            }

                            If (And (FLAG, 0x10))
                            {
                                Or (PRIT, 0x4000, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                                If (LGreater (PIO1, 0xF0))
                                {
                                    Or (PRIT, 0x80, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                                }
                                Else
                                {
                                    Or (PRIT, 0x10, PRIT) /* \_SB_.PCI0.PATA.PRIT */
                                    Store (SETT (PIO1, W531, W641), PSIT) /* \_SB_.PCI0.PATA.PSIT */
                                }
                            }

                            If (And (FLAG, 0x04))
                            {
                                Or (SYNC, 0x02, SYNC) /* \_SB_.PCI0.PATA.SYNC */
                                Store (SDMA (DMA1), SDT1) /* \_SB_.PCI0.PATA.SDT1 */
                                If (LLess (DMA1, 0x1E))
                                {
                                    Or (ICR3, 0x02, ICR3) /* \_SB_.PCI0.PATA.ICR3 */
                                }

                                If (LLess (DMA1, 0x3C))
                                {
                                    Or (ICR0, 0x02, ICR0) /* \_SB_.PCI0.PATA.ICR0 */
                                }

                                If (And (W931, 0x2000))
                                {
                                    Or (ICR1, 0x02, ICR1) /* \_SB_.PCI0.PATA.ICR1 */
                                }
                            }
                        }
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (XOr (SATD, One))
                        }

                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (PIB0, Buffer (0x0E)
                            {
                                /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x03,  // ........
                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF               // ......
                            })
                            CreateByteField (PIB0, One, PMD0)
                            CreateByteField (PIB0, 0x08, DMD0)
                            If (And (PRIT, 0x02))
                            {
                                If (LEqual (And (PRIT, 0x09), 0x08))
                                {
                                    Store (0x08, PMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PMD0 */
                                }
                                Else
                                {
                                    Store (0x0A, PMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PMD0 */
                                    ShiftRight (And (PRIT, 0x0300), 0x08, Local0)
                                    ShiftRight (And (PRIT, 0x3000), 0x0C, Local1)
                                    Add (Local0, Local1, Local2)
                                    If (LEqual (0x03, Local2))
                                    {
                                        Store (0x0B, PMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PMD0 */
                                    }

                                    If (LEqual (0x05, Local2))
                                    {
                                        Store (0x0C, PMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PMD0 */
                                    }
                                }
                            }
                            Else
                            {
                                Store (One, PMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PMD0 */
                            }

                            If (And (SYNC, One))
                            {
                                Or (SDT0, 0x40, DMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.DMD0 */
                                If (And (ICR1, One))
                                {
                                    If (And (ICR0, One))
                                    {
                                        Add (DMD0, 0x02, DMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.DMD0 */
                                    }

                                    If (And (ICR3, One))
                                    {
                                        Store (0x45, DMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.DMD0 */
                                    }
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD0, 0x07), 0x02), 0x20, DMD0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.DMD0 */
                            }

                            Return (PIB0) /* \_SB_.PCI0.PATA.PRID.P_D0._GTF.PIB0 */
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                        {
                            Name (PIB1, Buffer (0x0E)
                            {
                                /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF, 0x03,  // ........
                                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF               // ......
                            })
                            CreateByteField (PIB1, One, PMD1)
                            CreateByteField (PIB1, 0x08, DMD1)
                            If (And (PRIT, 0x20))
                            {
                                If (LEqual (And (PRIT, 0x90), 0x80))
                                {
                                    Store (0x08, PMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PMD1 */
                                }
                                Else
                                {
                                    Add (And (PSIT, 0x03), ShiftRight (And (PSIT, 0x0C), 0x02), 
                                        Local0)
                                    If (LEqual (0x05, Local0))
                                    {
                                        Store (0x0C, PMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PMD1 */
                                    }
                                    ElseIf (LEqual (0x03, Local0))
                                    {
                                        Store (0x0B, PMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PMD1 */
                                    }
                                    Else
                                    {
                                        Store (0x0A, PMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PMD1 */
                                    }
                                }
                            }
                            Else
                            {
                                Store (One, PMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PMD1 */
                            }

                            If (And (SYNC, 0x02))
                            {
                                Or (SDT1, 0x40, DMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.DMD1 */
                                If (And (ICR1, 0x02))
                                {
                                    If (And (ICR0, 0x02))
                                    {
                                        Add (DMD1, 0x02, DMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.DMD1 */
                                    }

                                    If (And (ICR3, 0x02))
                                    {
                                        Store (0x45, DMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.DMD1 */
                                    }
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD1, 0x07), 0x02), 0x20, DMD1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.DMD1 */
                            }

                            Return (PIB1) /* \_SB_.PCI0.PATA.PRID.P_D1._GTF.PIB1 */
                        }
                    }
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                OperationRegion (SACS, PCI_Config, 0x40, 0xC0)
                Field (SACS, DWordAcc, NoLock, Preserve)
                {
                    PRIT,   16, 
                    SECT,   16, 
                    PSIT,   4, 
                    SSIT,   4, 
                    Offset (0x08), 
                    SYNC,   4, 
                    Offset (0x0A), 
                    SDT0,   2, 
                        ,   2, 
                    SDT1,   2, 
                    Offset (0x0B), 
                    SDT2,   2, 
                        ,   2, 
                    SDT3,   2, 
                    Offset (0x14), 
                    ICR0,   4, 
                    ICR1,   4, 
                    ICR2,   4, 
                    ICR3,   4, 
                    ICR4,   4, 
                    ICR5,   4, 
                    Offset (0x50), 
                    MAPV,   2
                }
            }

            Device (SBUS)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
                Field (SMBP, DWordAcc, NoLock, Preserve)
                {
                        ,   2, 
                    I2CE,   1
                }

                OperationRegion (SMBI, SystemIO, 0x18E0, 0x10)
                Field (SMBI, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                    Offset (0x02), 
                    HCON,   8, 
                    HCOM,   8, 
                    TXSA,   8, 
                    DAT0,   8, 
                    DAT1,   8, 
                    HBDR,   8, 
                    PECR,   8, 
                    RXSA,   8, 
                    SDAT,   16
                }

                Method (SSXB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Zero, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Store (Arg0, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (Arg1, HCOM) /* \_SB_.PCI0.SBUS.HCOM */
                    Store (0x48, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRXB, 1, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    Store (Zero, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Or (Arg0, One, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (0x44, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SWRB, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Zero, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Store (Arg0, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (Arg1, HCOM) /* \_SB_.PCI0.SBUS.HCOM */
                    Store (Arg2, DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    Store (0x48, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRDB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    Store (Zero, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Or (Arg0, One, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (Arg1, HCOM) /* \_SB_.PCI0.SBUS.HCOM */
                    Store (0x48, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SBLW, 4, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Arg3, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Store (Arg0, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (Arg1, HCOM) /* \_SB_.PCI0.SBUS.HCOM */
                    Store (SizeOf (Arg2), DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    Store (Zero, Local1)
                    Store (DerefOf (Index (Arg2, Zero)), HBDR) /* \_SB_.PCI0.SBUS.HBDR */
                    Store (0x54, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    While (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (0x0FA0, Local0)
                        While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                        }

                        If (LNot (Local0))
                        {
                            KILL ()
                            Return (Zero)
                        }

                        Store (0x80, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Increment (Local1)
                        If (LGreater (SizeOf (Arg2), Local1))
                        {
                            Store (DerefOf (Index (Arg2, Local1)), HBDR) /* \_SB_.PCI0.SBUS.HBDR */
                        }
                    }

                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SBLR, 3, Serialized)
                {
                    Name (TBUF, Buffer (0x0100){})
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Arg2, I2CE) /* \_SB_.PCI0.SBUS.I2CE */
                    Store (0xBF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Or (Arg0, One, TXSA) /* \_SB_.PCI0.SBUS.TXSA */
                    Store (Arg1, HCOM) /* \_SB_.PCI0.SBUS.HCOM */
                    Store (0x54, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (DAT0, Index (TBUF, Zero))
                    Store (0x80, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                    Store (One, Local1)
                    While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                    {
                        Store (0x0FA0, Local0)
                        While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                        }

                        If (LNot (Local0))
                        {
                            KILL ()
                            Return (Zero)
                        }

                        Store (HBDR, Index (TBUF, Local1))
                        Store (0x80, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Increment (Local1)
                    }

                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                        Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                    }

                    Return (Zero)
                }

                Method (STRT, 0, Serialized)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, 0x40))
                        {
                            Decrement (Local0)
                            Sleep (One)
                            If (LEqual (Local0, Zero))
                            {
                                Return (One)
                            }
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Store (0x0FA0, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, One))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                            If (LEqual (Local0, Zero))
                            {
                                KILL ()
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (COMP, 0, Serialized)
                {
                    Store (0x0FA0, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, 0x02))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Decrement (Local0)
                            Stall (0x32)
                            If (LEqual (Local0, Zero))
                            {
                                KILL ()
                            }
                        }
                    }

                    Return (Zero)
                }

                Method (KILL, 0, Serialized)
                {
                    Or (HCON, 0x02, HCON) /* \_SB_.PCI0.SBUS.HCON */
                    Or (HSTS, 0xFF, HSTS) /* \_SB_.PCI0.SBUS.HSTS */
                }
            }
        }
    }
}

