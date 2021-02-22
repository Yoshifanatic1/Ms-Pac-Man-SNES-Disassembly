
macro MSPM_HandleSplitSPCEngine()
if canreadfile2("SPC700/Engine.bin", $0000) == 1
	!MSPM_SPCEngineSize = readfile2("SPC700/Engine.bin", $0000)
	!LoopCounter #= 0
	while !LoopCounter < !MSPM_SPCEngineSize
		if !LoopCounter+$FC >= !MSPM_SPCEngineSize
			dw !MSPM_SPCEngineSize-!LoopCounter
			dw $0500+!LoopCounter
			!TEMP #= !MSPM_SPCEngineSize
			incbin "SPC700/Engine.bin":(!LoopCounter+$04)-(!TEMP+$04)
			!LoopCounter #= (!MSPM_SPCEngineSize-!LoopCounter)+!LoopCounter
		else
			dw $00FC
			dw $0500+!LoopCounter
			incbin "SPC700/Engine.bin":(!LoopCounter+$04)-(!LoopCounter+$0100)
			!LoopCounter #= !LoopCounter+$FC
		endif
	endif
	incbin "SPC700/Engine.bin":(!LoopCounter+$04)-
else
	error "Engine.bin is missing from the SPC700 folder!"
endif
endmacro 