/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLlOAZfS.aml, Thu Mar 18 11:38:21 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001A4 (420)
 *     Revision         0x01
 *     Checksum         0xDE
 *     OEM ID           "PmRef"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "CpuPm", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)    // Warning: Unknown object
    External (_PR_.CPU1, DeviceObj)    // Warning: Unknown object

    Scope (\_PR.CPU0)
    {
        Name (PSS, Package (0x06)
        {
            Package (0x06)
            {
                0x00000722, 
                0x00003910, 
                0x0000000A, 
                0x0000000A, 
                0x00000B25, 
                0x00000B25
            }, 

            Package (0x06)
            {
                0x0000067C, 
                0x000033E0, 
                0x0000000A, 
                0x0000000A, 
                0x00000A23, 
                0x00000A23
            }, 

            Package (0x06)
            {
                0x000005D6, 
                0x00002EB0, 
                0x0000000A, 
                0x0000000A, 
                0x0000091F, 
                0x0000091F
            }, 

            Package (0x06)
            {
                0x00000530, 
                0x00002980, 
                0x0000000A, 
                0x0000000A, 
                0x0000081C, 
                0x0000081C
            }, 

            Package (0x06)
            {
                0x0000048A, 
                0x00002450, 
                0x0000000A, 
                0x0000000A, 
                0x00000718, 
                0x00000718
            }, 

            Package (0x06)
            {
                0x000003E4, 
                0x00001F20, 
                0x0000000A, 
                0x0000000A, 
                0x00000615, 
                0x00000615
            }
        })
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (Zero)
        }

        Name (PCT, Package (0x02)
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
        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (PCT)
        }

        Name (APSN, Zero)
        Name (APLF, 0x04)
    }

    Scope (\_PR.CPU1)
    {
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            Return (\_PR.CPU0.PSS)
        }

        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (Zero)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            Return (\_PR.CPU0.PCT)
        }
    }
}

