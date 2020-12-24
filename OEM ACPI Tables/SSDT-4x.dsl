/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-4x.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000089 (137)
 *     Revision         0x01
 *     Checksum         0x0B
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu1Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu1Ist", 0x00003000)
{
    External (_PR_.CPU0._PSS, PkgObj)
    External (_PR_.CPU1, DeviceObj)
    External (PPCS, IntObj)

    Scope (\_PR.CPU1)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (PPCS) /* External reference */
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
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

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_PR.CPU0._PSS)
        }
    }
}

