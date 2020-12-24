/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6x.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000085 (133)
 *     Revision         0x01
 *     Checksum         0x7A
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu1Cst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "Cpu1Cst", 0x00003000)
{
    External (_PR_.CPU0._CST, MethodObj)    // 0 Arguments
    External (_PR_.CPU1, DeviceObj)
    External (CFGD, IntObj)
    External (PDC1, IntObj)

    Scope (\_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC1, 0x10))))
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

            Return (\_PR.CPU0._CST ())
        }
    }
}

