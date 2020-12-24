/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5x.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000379 (889)
 *     Revision         0x01
 *     Checksum         0xA3
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (_PR_.CPU0, DeviceObj)
    External (CCST, UnknownObj)
    External (CFGD, IntObj)
    External (GSCI, UnknownObj)
    External (PDC0, IntObj)
    External (RCST, IntObj)

    Scope (\_PR.CPU0)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x10))))
            {
                Return (Package (0x02)
                {
                    0x01, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        0x01, 
                        0x9D, 
                        0x03E8
                    }
                })
            }

            If (LOr (LEqual (GSCI, 0x03), LEqual (GSCI, 0x04)))
            {
                If (LEqual (GSCI, 0x04))
                {
                    Store (0x03, GSCI) /* External reference */
                }
                ElseIf (LEqual (GSCI, 0x03))
                {
                    Store (RCST, CCST) /* External reference */
                    Store (0x00, GSCI) /* External reference */
                }

                If (LEqual (RCST, 0x03))
                {
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001014, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01, 
                            0x01F4
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001015, // Address
                                    ,)
                            }, 

                            0x03, 
                            0x55, 
                            0xFA
                        }
                    })
                }

                If (LEqual (RCST, 0x02))
                {
                    Return (Package (0x03)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001014, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01, 
                            0x01F4
                        }
                    })
                }

                If (LEqual (RCST, 0x01))
                {
                    Return (Package (0x02)
                    {
                        0x01, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }
                    })
                }

                Return (Package (0x04)
                {
                    0x03, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        0x01, 
                        0x01, 
                        0x03E8
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001014, // Address
                                ,)
                        }, 

                        0x02, 
                        0x01, 
                        0x01F4
                    }, 

                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x08,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001016, // Address
                                ,)
                        }, 

                        0x03, 
                        0x39, 
                        0x64
                    }
                })
            }
            Else
            {
                If (And (CFGD, 0x80))
                {
                    Store (0x04, CCST) /* External reference */
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001014, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01, 
                            0x01F4
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001016, // Address
                                    ,)
                            }, 

                            0x03, 
                            0x39, 
                            0x64
                        }
                    })
                }

                If (LAnd (LNot (And (CFGD, 0x80)), And (CFGD, 0x40)))
                {
                    Store (0x03, CCST) /* External reference */
                    Return (Package (0x04)
                    {
                        0x03, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001014, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01, 
                            0x01F4
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001015, // Address
                                    ,)
                            }, 

                            0x03, 
                            0x11, 
                            0x64
                        }
                    })
                }

                If (And (CFGD, 0x20))
                {
                    Store (0x02, CCST) /* External reference */
                    Return (Package (0x03)
                    {
                        0x02, 
                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            0x01, 
                            0x01, 
                            0x03E8
                        }, 

                        Package (0x04)
                        {
                            ResourceTemplate ()
                            {
                                Register (SystemIO, 
                                    0x08,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000001014, // Address
                                    ,)
                            }, 

                            0x02, 
                            0x01, 
                            0x01F4
                        }
                    })
                }

                Store (0x01, CCST) /* External reference */
                Return (Package (0x02)
                {
                    0x01, 
                    Package (0x04)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        0x01, 
                        0x01, 
                        0x03E8
                    }
                })
            }
        }
    }
}

