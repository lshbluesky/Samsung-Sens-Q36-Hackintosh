/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000064F (1615)
 *     Revision         0x01
 *     Checksum         0x72
 *     OEM ID           "SataRe"
 *     OEM Table ID     "SataPri"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "SataRe", "SataPri", 0x00001000)
{
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA.ICR0, FieldUnitObj)
    External (_SB_.PCI0.SATA.ICR1, FieldUnitObj)
    External (_SB_.PCI0.SATA.ICR3, FieldUnitObj)
    External (_SB_.PCI0.SATA.ICR5, FieldUnitObj)
    External (_SB_.PCI0.SATA.PRIT, FieldUnitObj)
    External (_SB_.PCI0.SATA.PSIT, FieldUnitObj)
    External (_SB_.PCI0.SATA.SDT0, FieldUnitObj)
    External (_SB_.PCI0.SATA.SDT1, FieldUnitObj)
    External (_SB_.PCI0.SATA.SYNC, FieldUnitObj)
    External (GDMA, MethodObj)    // 5 Arguments
    External (GETF, MethodObj)    // 3 Arguments
    External (GETP, MethodObj)    // 1 Arguments
    External (GETT, MethodObj)    // 1 Arguments
    External (SDMA, MethodObj)    // 1 Arguments
    External (SETP, MethodObj)    // 3 Arguments
    External (SETT, MethodObj)    // 3 Arguments

    Scope (\_SB.PCI0.SATA)
    {
        Device (PRID)
        {
            Name (_ADR, 0x00)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (PBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateDWordField (PBUF, 0x00, PIO0)
                CreateDWordField (PBUF, 0x04, DMA0)
                CreateDWordField (PBUF, 0x08, PIO1)
                CreateDWordField (PBUF, 0x0C, DMA1)
                CreateDWordField (PBUF, 0x10, FLAG)
                Store (GETP (PRIT), PIO0) /* \_SB_.PCI0.SATA.PRID._GTM.PIO0 */
                Store (GDMA (And (SYNC, 0x01), And (ICR3, 0x01), And (ICR0, 
                    0x01), SDT0, And (ICR1, 0x01)), DMA0) /* \_SB_.PCI0.SATA.PRID._GTM.DMA0 */
                If (LEqual (DMA0, 0xFFFFFFFF))
                {
                    Store (PIO0, DMA0) /* \_SB_.PCI0.SATA.PRID._GTM.DMA0 */
                }

                If (And (PRIT, 0x4000))
                {
                    If (LEqual (And (PRIT, 0x90), 0x80))
                    {
                        Store (0x0384, PIO1) /* \_SB_.PCI0.SATA.PRID._GTM.PIO1 */
                    }
                    Else
                    {
                        Store (GETT (PSIT), PIO1) /* \_SB_.PCI0.SATA.PRID._GTM.PIO1 */
                    }
                }
                Else
                {
                    Store (0xFFFFFFFF, PIO1) /* \_SB_.PCI0.SATA.PRID._GTM.PIO1 */
                }

                Store (GDMA (And (SYNC, 0x02), And (ICR3, 0x02), And (ICR0, 
                    0x02), SDT1, And (ICR1, 0x02)), DMA1) /* \_SB_.PCI0.SATA.PRID._GTM.DMA1 */
                If (LEqual (DMA1, 0xFFFFFFFF))
                {
                    Store (PIO1, DMA1) /* \_SB_.PCI0.SATA.PRID._GTM.DMA1 */
                }

                Store (GETF (And (SYNC, 0x01), And (SYNC, 0x02), PRIT), FLAG) /* \_SB_.PCI0.SATA.PRID._GTM.FLAG */
                Return (PBUF) /* \_SB_.PCI0.SATA.PRID._GTM.PBUF */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
                CreateDWordField (Arg0, 0x00, PIO0)
                CreateDWordField (Arg0, 0x04, DMA0)
                CreateDWordField (Arg0, 0x08, PIO1)
                CreateDWordField (Arg0, 0x0C, DMA1)
                CreateDWordField (Arg0, 0x10, FLAG)
                If (LEqual (SizeOf (Arg1), 0x0200))
                {
                    And (PRIT, 0x40F0, PRIT) /* External reference */
                    And (SYNC, 0x0E, SYNC) /* External reference */
                    Store (0x00, SDT0) /* External reference */
                    And (ICR0, 0x0E, ICR0) /* External reference */
                    And (ICR1, 0x0E, ICR1) /* External reference */
                    And (ICR3, 0x0E, ICR3) /* External reference */
                    And (ICR5, 0x0E, ICR5) /* External reference */
                    CreateWordField (Arg1, 0x62, W490)
                    CreateWordField (Arg1, 0x6A, W530)
                    CreateWordField (Arg1, 0x7E, W630)
                    CreateWordField (Arg1, 0x80, W640)
                    CreateWordField (Arg1, 0xB0, W880)
                    CreateWordField (Arg1, 0xBA, W930)
                    Or (PRIT, 0x8004, PRIT) /* External reference */
                    If (LAnd (And (FLAG, 0x02), And (W490, 0x0800)))
                    {
                        Or (PRIT, 0x02, PRIT) /* External reference */
                    }

                    Or (PRIT, SETP (PIO0, W530, W640), PRIT) /* External reference */
                    If (And (FLAG, 0x01))
                    {
                        Or (SYNC, 0x01, SYNC) /* External reference */
                        Store (SDMA (DMA0), SDT0) /* External reference */
                        If (LLess (DMA0, 0x1E))
                        {
                            Or (ICR3, 0x01, ICR3) /* External reference */
                        }

                        If (LLess (DMA0, 0x3C))
                        {
                            Or (ICR0, 0x01, ICR0) /* External reference */
                        }

                        Or (ICR1, 0x01, ICR1) /* External reference */
                    }
                }

                If (LEqual (SizeOf (Arg2), 0x0200))
                {
                    And (PRIT, 0x3F0F, PRIT) /* External reference */
                    Store (0x00, PSIT) /* External reference */
                    And (SYNC, 0x0D, SYNC) /* External reference */
                    Store (0x00, SDT1) /* External reference */
                    And (ICR0, 0x0D, ICR0) /* External reference */
                    And (ICR1, 0x0D, ICR1) /* External reference */
                    And (ICR3, 0x0D, ICR3) /* External reference */
                    And (ICR5, 0x0D, ICR5) /* External reference */
                    CreateWordField (Arg2, 0x62, W491)
                    CreateWordField (Arg2, 0x6A, W531)
                    CreateWordField (Arg2, 0x7E, W631)
                    CreateWordField (Arg2, 0x80, W641)
                    CreateWordField (Arg2, 0xB0, W881)
                    CreateWordField (Arg2, 0xBA, W931)
                    Or (PRIT, 0x8040, PRIT) /* External reference */
                    If (LAnd (And (FLAG, 0x08), And (W491, 0x0800)))
                    {
                        Or (PRIT, 0x20, PRIT) /* External reference */
                    }

                    If (And (FLAG, 0x10))
                    {
                        Or (PRIT, 0x4000, PRIT) /* External reference */
                        If (LGreater (PIO1, 0xF0))
                        {
                            Or (PRIT, 0x80, PRIT) /* External reference */
                        }
                        Else
                        {
                            Or (PRIT, 0x10, PRIT) /* External reference */
                            Store (SETT (PIO1, W531, W641), PSIT) /* External reference */
                        }
                    }

                    If (And (FLAG, 0x04))
                    {
                        Or (SYNC, 0x02, SYNC) /* External reference */
                        Store (SDMA (DMA1), SDT1) /* External reference */
                        If (LLess (DMA1, 0x1E))
                        {
                            Or (ICR3, 0x02, ICR3) /* External reference */
                        }

                        If (LLess (DMA1, 0x3C))
                        {
                            Or (ICR0, 0x02, ICR0) /* External reference */
                        }

                        Or (ICR1, 0x02, ICR1) /* External reference */
                    }
                }
            }

            Device (P_D0)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Name (PIB0, Buffer (0x0E)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x03,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF               // ......
                    })
                    CreateByteField (PIB0, 0x01, PMD0)
                    CreateByteField (PIB0, 0x08, DMD0)
                    If (And (PRIT, 0x02))
                    {
                        If (LEqual (And (PRIT, 0x09), 0x08))
                        {
                            Store (0x08, PMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PMD0 */
                        }
                        Else
                        {
                            Store (0x0A, PMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PMD0 */
                            ShiftRight (And (PRIT, 0x0300), 0x08, Local0)
                            ShiftRight (And (PRIT, 0x3000), 0x0C, Local1)
                            Add (Local0, Local1, Local2)
                            If (LEqual (0x03, Local2))
                            {
                                Store (0x0B, PMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PMD0 */
                            }

                            If (LEqual (0x05, Local2))
                            {
                                Store (0x0C, PMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PMD0 */
                            }
                        }
                    }
                    Else
                    {
                        Store (0x01, PMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PMD0 */
                    }

                    If (And (SYNC, 0x01))
                    {
                        Store (Or (SDT0, 0x40), DMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.DMD0 */
                        If (And (ICR1, 0x01))
                        {
                            If (And (ICR0, 0x01))
                            {
                                Add (DMD0, 0x02, DMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.DMD0 */
                            }

                            If (And (ICR3, 0x01))
                            {
                                Store (0x45, DMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.DMD0 */
                            }
                        }
                    }
                    Else
                    {
                        Or (Subtract (And (PMD0, 0x07), 0x02), 0x20, DMD0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.DMD0 */
                    }

                    Return (PIB0) /* \_SB_.PCI0.SATA.PRID.P_D0._GTF.PIB0 */
                }
            }

            Device (P_D1)
            {
                Name (_ADR, 0x01)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Name (PIB1, Buffer (0x0E)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF, 0x03,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF               // ......
                    })
                    CreateByteField (PIB1, 0x01, PMD1)
                    CreateByteField (PIB1, 0x08, DMD1)
                    If (And (PRIT, 0x20))
                    {
                        If (LEqual (And (PRIT, 0x90), 0x80))
                        {
                            Store (0x08, PMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PMD1 */
                        }
                        Else
                        {
                            Add (And (PSIT, 0x03), ShiftRight (And (PSIT, 0x0C), 0x02), 
                                Local0)
                            If (LEqual (0x05, Local0))
                            {
                                Store (0x0C, PMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PMD1 */
                            }
                            ElseIf (LEqual (0x03, Local0))
                            {
                                Store (0x0B, PMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PMD1 */
                            }
                            Else
                            {
                                Store (0x0A, PMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PMD1 */
                            }
                        }
                    }
                    Else
                    {
                        Store (0x01, PMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PMD1 */
                    }

                    If (And (SYNC, 0x02))
                    {
                        Store (Or (SDT1, 0x40), DMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.DMD1 */
                        If (And (ICR1, 0x02))
                        {
                            If (And (ICR0, 0x02))
                            {
                                Add (DMD1, 0x02, DMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.DMD1 */
                            }

                            If (And (ICR3, 0x02))
                            {
                                Store (0x45, DMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.DMD1 */
                            }
                        }
                    }
                    Else
                    {
                        Or (Subtract (And (PMD1, 0x07), 0x02), 0x20, DMD1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.DMD1 */
                    }

                    Return (PIB1) /* \_SB_.PCI0.SATA.PRID.P_D1._GTF.PIB1 */
                }
            }
        }
    }
}

