/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Thu Dec 24 13:49:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004F6 (1270)
 *     Revision         0x01
 *     Checksum         0x64
 *     OEM ID           "PmRef"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050624 (537200164)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "CpuPm", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)
    External (_PR_.CPU1, DeviceObj)
    External (PCP0, UnknownObj)
    External (PCP1, UnknownObj)

    Scope (\)
    {
        Name (SSDT, Package (0x0C)
        {
            "CPU0IST ", 
            0x9F695A5F, 
            0x00000251, 
            "CPU1IST ", 
            0x9F695CB0, 
            0x00000089, 
            "CPU0CST ", 
            0x9F695661, 
            0x00000379, 
            "CPU1CST ", 
            0x9F6959DA, 
            0x00000085
        })
        Name (CFGD, 0x011B49F1)
        Name (\PDC0, 0x80000000)
        Name (\PDC1, 0x80000000)
        Name (\SDTL, 0x00)
    }

    Scope (\_PR.CPU0)
    {
        Name (HI0, 0x00)
        Name (HC0, 0x00)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)
            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (
                IID2, EID2), LEqual (IID3, EID3)))))
            {
                Store (0x06, Index (STS0, 0x00))
                Return (Arg3)
            }

            If (LNotEqual (Arg1, 0x01))
            {
                Store (0x0A, Index (STS0, 0x00))
                Return (Arg3)
            }

            Or (And (PDC0, 0x7FFFFFFF), CAP0, PDC0) /* \PDC0 */
            Store (And (PDC0, 0xFF), PCP0) /* External reference */
            If (And (CFGD, 0x01))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (PDC0, 0x09), 
                    0x09)), LNot (And (SDTL, 0x01))))
                {
                    Or (SDTL, 0x01, SDTL) /* \SDTL */
                    OperationRegion (IST0, SystemMemory, DerefOf (Index (SSDT, 0x01)), DerefOf (Index (SSDT, 0x02)))
                    Load (IST0, HI0) /* \_PR_.CPU0.HI0_ */
                }
            }

            If (And (CFGD, 0xF0))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), And (PDC0, 0x18)), LNot (
                    And (SDTL, 0x02))))
                {
                    Or (SDTL, 0x02, SDTL) /* \SDTL */
                    OperationRegion (CST0, SystemMemory, DerefOf (Index (SSDT, 0x07)), DerefOf (Index (SSDT, 0x08)))
                    Load (CST0, HC0) /* \_PR_.CPU0.HC0_ */
                }
            }

            Return (Arg3)
        }
    }

    Scope (\_PR.CPU1)
    {
        Name (HI1, 0x00)
        Name (HC1, 0x00)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)
            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Name (STS1, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS1, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x00, STS1)
            CreateDWordField (Arg3, 0x04, CAP1)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID1, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID1, 0x00, EID0)
            CreateDWordField (UID1, 0x04, EID1)
            CreateDWordField (UID1, 0x08, EID2)
            CreateDWordField (UID1, 0x0C, EID3)
            If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (
                IID2, EID2), LEqual (IID3, EID3)))))
            {
                Store (0x06, Index (STS1, 0x00))
                Return (Arg3)
            }

            If (LNotEqual (Arg1, 0x01))
            {
                Store (0x0A, Index (STS1, 0x00))
                Return (Arg3)
            }

            Or (And (PDC1, 0x7FFFFFFF), CAP1, PDC1) /* \PDC1 */
            Store (And (PDC1, 0xFF), PCP1) /* External reference */
            If (And (CFGD, 0x01))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), LEqual (And (PDC1, 0x09), 
                    0x09)), LNot (And (SDTL, 0x10))))
                {
                    Or (SDTL, 0x10, SDTL) /* \SDTL */
                    OperationRegion (IST1, SystemMemory, DerefOf (Index (SSDT, 0x04)), DerefOf (Index (SSDT, 0x05)))
                    Load (IST1, HI1) /* \_PR_.CPU1.HI1_ */
                }
            }

            If (And (CFGD, 0xF0))
            {
                If (LAnd (LAnd (And (CFGD, 0x01000000), And (PDC1, 0x18)), LNot (
                    And (SDTL, 0x20))))
                {
                    Or (SDTL, 0x20, SDTL) /* \SDTL */
                    OperationRegion (CST1, SystemMemory, DerefOf (Index (SSDT, 0x0A)), DerefOf (Index (SSDT, 0x0B)))
                    Load (CST1, HC1) /* \_PR_.CPU1.HC1_ */
                }
            }

            Return (Arg3)
        }
    }
}

