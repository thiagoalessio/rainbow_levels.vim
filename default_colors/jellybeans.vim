hi default link RainbowLevel0 Constant
hi default link RainbowLevel1 Type
hi default link RainbowLevel2 Function
hi default link RainbowLevel3 String
hi default link RainbowLevel4 PreProc
hi default link RainbowLevel5 Statement
hi default link RainbowLevel6 Identifier
hi default link RainbowLevel7 Comment

for level in range(0, 7)
	exe 'hi! link RainbowLevel'.(level+8).' RainbowLevel'.level
endfor
