
macro MSPM_GameSpecificAssemblySettings()
	!ROM_MSPM_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_MSPM_J = $0002							;/

	%SetROMToAssembleForHack(MSPM_U, !ROMID)
endmacro

macro MSPM_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_MSPM.asm
	incsrc ../RAM_Map_MSPM.asm
	incsrc ../Routine_Macros_MSPM.asm
	incsrc ../SNES_Macros_MSPM.asm
endmacro

macro MSPM_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_MSPM.asm
	incsrc ../Misc_Defines_MSPM.asm
	incsrc ../SPC700/SPC700_Macros_MSPM.asm
endmacro

macro MSPM_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro MSPM_LoadGameSpecificMSU1Files()
endmacro

macro MSPM_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $02
	!Define_Global_FixIncorrectChecksumHack = !TRUE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 1
	!Define_Global_AsarChecksum = $0000
	!Define_Global_LicenseeName = "Williams"
	!Define_Global_DeveloperName = "Digital Eclipse"
	!Define_Global_ReleaseDate = "1996"
	!Define_Global_BaseROMMD5Hash = "f62625b0f5b12482d31f2fc5e7097410"

	!Define_Global_MakerCode = "5D"
	!Define_Global_GameCode = "AN8E"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "MSPACMAN             "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_256KB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $33
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $B876
	!UnusedNativeModeVector1 = $00FF
	!UnusedNativeModeVector2 = $00FF
	!NativeModeCOPVector = $0000
	!NativeModeBRKVector = $0000
	!NativeModeAbortVector = $0000
	!NativeModeNMIVector = CODE_80811F
	!NativeModeResetVector = $0000
	!NativeModeIRQVector = CODE_808118
	!UnusedEmulationModeVector1 = $0000
	!UnusedEmulationModeVector2 = $0000
	!EmulationModeCOPVector = $0000
	!EmulationModeBRKVector = $0000
	!EmulationModeAbortVector = $0000
	!EmulationModeNMIVector = CODE_80811F
	!EmulationModeResetVector = CODE_808000
	!EmulationModeIRQVector = CODE_808118
endmacro

macro MSPM_LoadROMMap()
	%MSPMBank80Macros(!BANK_00, !BANK_00)
	%MSPMBank81Macros(!BANK_01, !BANK_01)
	%MSPMBank82Macros(!BANK_02, !BANK_02)
	%MSPMBank83Macros(!BANK_03, !BANK_03)
	%MSPMBank84Macros(!BANK_04, !BANK_04)
	%MSPMBank85Macros(!BANK_05, !BANK_05)
	%MSPMBank86Macros(!BANK_06, !BANK_06)
	%MSPMBank87Macros(!BANK_07, !BANK_07)
endmacro
