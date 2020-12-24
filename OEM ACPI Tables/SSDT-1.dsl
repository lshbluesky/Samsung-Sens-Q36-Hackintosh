/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000692 (1682)
 *     Revision         0x01
 *     Checksum         0x2A
 *     OEM ID           "SataRe"
 *     OEM Table ID     "SataSec"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "SataRe", "SataSec", 0x00001000)
{
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA.ICR0, UnknownObj)
    External (_SB_.PCI0.SATA.ICR1, UnknownObj)
    External (_SB_.PCI0.SATA.ICR3, UnknownObj)
    External (_SB_.PCI0.SATA.ICR5, UnknownObj)
    External (_SB_.PCI0.SATA.SYNC, UnknownObj)
    External (GDMA, UnknownObj)
    External (GETF, UnknownObj)
    External (GETP, UnknownObj)
    External (GETT, UnknownObj)
    External (SDMA, UnknownObj)
    External (SDT2, UnknownObj)
    External (SDT3, UnknownObj)
    External (SECT, UnknownObj)
    External (SETP, UnknownObj)
    External (SETT, UnknownObj)
    External (SSIT, UnknownObj)

    Scope (\_SB.PCI0.SATA)
    {
        Device (SECD)
        {
            Name (_ADR, 0x01)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (SBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateDWordField (SBUF, 0x00, PIO0)
                CreateDWordField (SBUF, 0x04, DMA0)
                CreateDWordField (SBUF, 0x08, PIO1)
                CreateDWordField (SBUF, 0x0C, DMA1)
                CreateDWordField (SBUF, 0x10, FLAG)
                Store (GETP (SECT), PIO0) /* \_SB_.PCI0.SATA.SECD._GTM.PIO0 */
                Store (GDMA (And (SYNC, 0x04), And (ICR3, 0x04), And (ICR0, 
                    0x04), SDT2, And (ICR1, 0x04)), DMA0) /* \_SB_.PCI0.SATA.SECD._GTM.DMA0 */
                If (LEqual (DMA0, 0xFFFFFFFF))
                {
                    Store (PIO0, DMA0) /* \_SB_.PCI0.SATA.SECD._GTM.DMA0 */
                }

                If (And (SECT, 0x4000))
                {
                    If (LEqual (And (SECT, 0x90), 0x80))
                    {
                        Store (0x0384, PIO1) /* \_SB_.PCI0.SATA.SECD._GTM.PIO1 */
                    }
                    Else
                    {
                        Store (GETT (SSIT), PIO1) /* \_SB_.PCI0.SATA.SECD._GTM.PIO1 */
                    }
                }
                Else
                {
                    Store (0xFFFFFFFF, PIO1) /* \_SB_.PCI0.SATA.SECD._GTM.PIO1 */
                }

                Store (GDMA (And (SYNC, 0x08), And (ICR3, 0x08), And (ICR0, 
                    0x08), SDT3, And (ICR1, 0x08)), DMA1) /* \_SB_.PCI0.SATA.SECD._GTM.DMA1 */
                If (LEqual (DMA1, 0xFFFFFFFF))
                {
                    Store (PIO1, DMA1) /* \_SB_.PCI0.SATA.SECD._GTM.DMA1 */
                }

                Store (GETF (And (SYNC, 0x04), And (SYNC, 0x08), SECT), FLAG) /* \_SB_.PCI0.SATA.SECD._GTM.FLAG */
                If (And (LEqual (PIO0, 0xFFFFFFFF), LEqual (DMA0, 0xFFFFFFFF)))
                {
                    Store (0x78, PIO0) /* \_SB_.PCI0.SATA.SECD._GTM.PIO0 */
                    Store (0x14, DMA0) /* \_SB_.PCI0.SATA.SECD._GTM.DMA0 */
                    Store (0x03, FLAG) /* \_SB_.PCI0.SATA.SECD._GTM.FLAG */
                }

                Return (SBUF) /* \_SB_.PCI0.SATA.SECD._GTM.SBUF */
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
                    And (SECT, 0x40F0, SECT) /* External reference */
                    And (SYNC, 0x0B, SYNC) /* External reference */
                    Store (0x00, SDT2) /* External reference */
                    And (ICR0, 0x0B, ICR0) /* External reference */
                    And (ICR1, 0x0B, ICR1) /* External reference */
                    And (ICR3, 0x0B, ICR3) /* External reference */
                    And (ICR5, 0x0B, ICR5) /* External reference */
                    CreateWordField (Arg1, 0x62, W490)
                    CreateWordField (Arg1, 0x6A, W530)
                    CreateWordField (Arg1, 0x7E, W630)
                    CreateWordField (Arg1, 0x80, W640)
                    CreateWordField (Arg1, 0xB0, W880)
                    CreateWordField (Arg1, 0xBA, W930)
                    Or (SECT, 0x8004, SECT) /* External reference */
                    If (LAnd (And (FLAG, 0x02), And (W490, 0x0800)))
                    {
                        Or (SECT, 0x02, SECT) /* External reference */
                    }

                    Or (SECT, SETP (PIO0, W530, W640), SECT) /* External reference */
                    If (And (FLAG, 0x01))
                    {
                        Or (SYNC, 0x04, SYNC) /* External reference */
                        Store (SDMA (DMA0), SDT2) /* External reference */
                        If (LLess (DMA0, 0x1E))
                        {
                            Or (ICR3, 0x04, ICR3) /* External reference */
                        }

                        If (LLess (DMA0, 0x3C))
                        {
                            Or (ICR0, 0x04, ICR0) /* External reference */
                        }

                        If (And (W930, 0x2000))
                        {
                            Or (ICR1, 0x04, ICR1) /* External reference */
                        }
                    }
                }

                If (LEqual (SizeOf (Arg2), 0x0200))
                {
                    And (SECT, 0x3F0F, SECT) /* External reference */
                    Store (0x00, SSIT) /* External reference */
                    And (SYNC, 0x07, SYNC) /* External reference */
                    Store (0x00, SDT3) /* External reference */
                    And (ICR0, 0x07, ICR0) /* External reference */
                    And (ICR1, 0x07, ICR1) /* External reference */
                    And (ICR3, 0x07, ICR3) /* External reference */
                    And (ICR5, 0x07, ICR5) /* External reference */
                    CreateWordField (Arg2, 0x62, W491)
                    CreateWordField (Arg2, 0x6A, W531)
                    CreateWordField (Arg2, 0x7E, W631)
                    CreateWordField (Arg2, 0x80, W641)
                    CreateWordField (Arg2, 0xB0, W881)
                    CreateWordField (Arg2, 0xBA, W931)
                    Or (SECT, 0x8040, SECT) /* External reference */
                    If (LAnd (And (FLAG, 0x08), And (W491, 0x0800)))
                    {
                        Or (SECT, 0x20, SECT) /* External reference */
                    }

                    If (And (FLAG, 0x10))
                    {
                        Or (SECT, 0x4000, SECT) /* External reference */
                        If (LGreater (PIO1, 0xF0))
                        {
                            Or (SECT, 0x80, SECT) /* External reference */
                        }
                        Else
                        {
                            Or (SECT, 0x10, SECT) /* External reference */
                            Store (SETT (PIO1, W531, W641), SSIT) /* External reference */
                        }
                    }

                    If (And (FLAG, 0x04))
                    {
                        Or (SYNC, 0x08, SYNC) /* External reference */
                        Store (SDMA (DMA1), SDT3) /* External reference */
                        If (LLess (DMA1, 0x1E))
                        {
                            Or (ICR3, 0x08, ICR3) /* External reference */
                        }

                        If (LLess (DMA1, 0x3C))
                        {
                            Or (ICR0, 0x08, ICR0) /* External reference */
                        }

                        If (And (W931, 0x2000))
                        {
                            Or (ICR1, 0x08, ICR1) /* External reference */
                        }
                    }
                }
            }

            Device (S_D0)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Name (SIB0, Buffer (0x0E)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x03,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF               // ......
                    })
                    CreateByteField (SIB0, 0x01, PMD0)
                    CreateByteField (SIB0, 0x08, DMD0)
                    If (And (SECT, 0x02))
                    {
                        If (LEqual (And (SECT, 0x09), 0x08))
                        {
                            Store (0x08, PMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.PMD0 */
                        }
                        Else
                        {
                            Store (0x0A, PMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.PMD0 */
                            ShiftRight (And (SECT, 0x0300), 0x08, Local0)
                            ShiftRight (And (SECT, 0x3000), 0x0C, Local1)
                            Add (Local0, Local1, Local2)
                            If (LEqual (0x03, Local2))
                            {
                                Store (0x0B, PMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.PMD0 */
                            }

                            If (LEqual (0x05, Local2))
                            {
                                Store (0x0C, PMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.PMD0 */
                            }
                        }
                    }
                    Else
                    {
                        Store (0x01, PMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.PMD0 */
                    }

                    If (And (SYNC, 0x04))
                    {
                        Store (Or (SDT2, 0x40), DMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.DMD0 */
                        If (And (ICR1, 0x04))
                        {
                            If (And (ICR0, 0x04))
                            {
                                Add (DMD0, 0x02, DMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.DMD0 */
                            }

                            If (And (ICR3, 0x04))
                            {
                                Store (0x45, DMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.DMD0 */
                            }
                        }
                    }
                    Else
                    {
                        Or (Subtract (And (PMD0, 0x07), 0x02), 0x20, DMD0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.DMD0 */
                    }

                    Return (SIB0) /* \_SB_.PCI0.SATA.SECD.S_D0._GTF.SIB0 */
                }
            }

            Device (S_D1)
            {
                Name (_ADR, 0x01)  // _ADR: Address
                Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
                {
                    Name (SIB1, Buffer (0x0E)
                    {
                        /* 0000 */  0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF, 0x03,  // ........
                        /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF               // ......
                    })
                    CreateByteField (SIB1, 0x01, PMD1)
                    CreateByteField (SIB1, 0x08, DMD1)
                    If (And (SECT, 0x20))
                    {
                        If (LEqual (And (SECT, 0x90), 0x80))
                        {
                            Store (0x08, PMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.PMD1 */
                        }
                        Else
                        {
                            Add (And (SSIT, 0x03), ShiftRight (And (SSIT, 0x0C), 0x02), 
                                Local0)
                            If (LEqual (0x05, Local0))
                            {
                                Store (0x0C, PMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.PMD1 */
                            }
                            ElseIf (LEqual (0x03, Local0))
                            {
                                Store (0x0B, PMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.PMD1 */
                            }
                            Else
                            {
                                Store (0x0A, PMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.PMD1 */
                            }
                        }
                    }
                    Else
                    {
                        Store (0x01, PMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.PMD1 */
                    }

                    If (And (SYNC, 0x08))
                    {
                        Store (Or (SDT3, 0x40), DMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.DMD1 */
                        If (And (ICR1, 0x08))
                        {
                            If (And (ICR0, 0x08))
                            {
                                Add (DMD1, 0x02, DMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.DMD1 */
                            }

                            If (And (ICR3, 0x08))
                            {
                                Store (0x45, DMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.DMD1 */
                            }
                        }
                    }
                    Else
                    {
                        Or (Subtract (And (PMD1, 0x07), 0x02), 0x20, DMD1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.DMD1 */
                    }

                    Return (SIB1) /* \_SB_.PCI0.SATA.SECD.S_D1._GTF.SIB1 */
                }
            }
        }
    }
}

