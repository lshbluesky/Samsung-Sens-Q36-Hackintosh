/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLa6Rtcn.aml, Thu Mar 18 11:38:31 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000114 (276)
 *     Revision         0x01
 *     Checksum         0x9A
 *     OEM ID           "PmRefA"
 *     OEM Table ID     "CpuCst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRefA", "CpuCst", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU1, DeviceObj)    // Warning: Unknown object

    Scope (\_PR.CPU0)
    {
        Name (CST, Package (0x06)
        {
            0x05, 
            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000000, // Address
                        0x01,               // Access Size
                        )
                }, 

                One, 
                0x0001, 
                0x000003E8
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000010, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x02, 
                0x0040, 
                0x000001F4
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000030, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x04, 
                0x0080, 
                0x000000C8
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000020, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x06, 
                0x03EC, 
                0x0000015E
            }, 

            Package (0x04)
            {
                ResourceTemplate ()
                {
                    Register (FFixedHW, 
                        0x01,               // Bit Width
                        0x02,               // Bit Offset
                        0x0000000000000030, // Address
                        0x03,               // Access Size
                        )
                }, 

                0x07, 
                0x00F5, 
                0x000000C8
            }
        })
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (CST)
        }
    }

    Scope (\_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)  // _CST: C-States
        {
            Return (\_PR.CPU0.CST)
        }
    }
}

