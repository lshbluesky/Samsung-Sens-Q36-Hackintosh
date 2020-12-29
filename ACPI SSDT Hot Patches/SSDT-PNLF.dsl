/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLsaLKZf.aml, Tue Dec 29 21:40:15 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000071 (113)
 *     Revision         0x02
 *     Checksum         0xFE
 *     OEM ID           "hack"
 *     OEM Table ID     "PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PNLF", 0x00000000)
{
    Scope (\_SB)
    {
        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x0A)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

