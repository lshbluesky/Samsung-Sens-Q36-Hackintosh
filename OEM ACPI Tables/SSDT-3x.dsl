/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3x.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000251 (593)
 *     Revision         0x01
 *     Checksum         0x12
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)
    External (CFGD, IntObj)
    External (GSCI, UnknownObj)
    External (NIST, UnknownObj)
    External (NPSS, IntObj)
    External (PDC0, IntObj)
    External (PPCM, IntObj)
    External (PPCS, IntObj)
    External (RIST, UnknownObj)
    External (TZON, UnknownObj)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            If (LEqual (GSCI, 0x01))
            {
                If (LEqual (TZON, 0x01))
                {
                    Divide (PPCM, 0x02, Local1, Local2)
                    If (LNotEqual (Local1, Zero))
                    {
                        Increment (Local2)
                    }

                    Store (Local2, PPCS) /* External reference */
                    Subtract (PPCM, PPCS, NIST) /* External reference */
                    Increment (NIST)
                    Return (PPCS) /* External reference */
                }

                If (LEqual (TZON, 0x02))
                {
                    Store (PPCM, PPCS) /* External reference */
                    Store (0x01, NIST) /* External reference */
                    Return (PPCS) /* External reference */
                }
            }
            ElseIf (LEqual (GSCI, 0x02))
            {
                Subtract (PPCM, RIST, PPCS) /* External reference */
                Return (PPCS) /* External reference */
            }

            Add (PPCM, 0x01, NIST) /* External reference */
            Store (0x00, PPCS) /* External reference */
            Return (PPCS) /* External reference */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, 0x01), And (PDC0, 0x01)))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x10,               // Bit Width
                        0x00,               // Bit Offset
                        0x00000000000000B2, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x08,               // Bit Width
                        0x00,               // Bit Offset
                        0x00000000000000B3, // Address
                        ,)
                }
            })
        }

        Method (XPSS, 0, NotSerialized)
        {
            If (And (PDC0, 0x01))
            {
                Store (SizeOf (NPSS), Local0)
                Store (Local0, NIST) /* External reference */
                Return (NPSS) /* External reference */
            }

            Store (SizeOf (SPSS), Local0)
            Store (Local0, NIST) /* External reference */
            Return (SPSS) /* \_PR_.CPU0.SPSS */
        }

        Name (SPSS, Package (0x03)
        {
            Package (0x06)
            {
                0x00000729, 
                0x00007918, 
                0x0000006E, 
                0x0000000A, 
                0x00000083, 
                0x00000000
            }, 

            Package (0x06)
            {
                0x00000535, 
                0x00004E20, 
                0x0000006E, 
                0x0000000A, 
                0x00000183, 
                0x00000001
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x000032C8, 
                0x0000006E, 
                0x0000000A, 
                0x00000283, 
                0x00000002
            }
        })
        Name (_PSS, Package (0x03)  // _PSS: Performance Supported States
        {
            Package (0x06)
            {
                0x00000729, 
                0x00007918, 
                0x0000000A, 
                0x0000000A, 
                0x00000B25, 
                0x00000B25
            }, 

            Package (0x06)
            {
                0x00000535, 
                0x00004E20, 
                0x0000000A, 
                0x0000000A, 
                0x0000081B, 
                0x0000081B
            }, 

            Package (0x06)
            {
                0x000003E8, 
                0x000032C8, 
                0x0000000A, 
                0x0000000A, 
                0x00000613, 
                0x00000613
            }
        })
    }
}

