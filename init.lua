local FRemap = require('modules.foundation_remapping')
local remapper = FRemap.new()

-- 리로드 시 알림
hs.alert.show("Hello, World")
-- Shift+Cmd+R: 설정 리로드
hs.hotkey.bind({'shift','cmd'},"r", hs.reload)

-- 키 리매핑 (hidutil 저수준)
remapper:remap('capslock','f13')   -- CapsLock → F13 (vim 모드 트리거)
remapper:remap('rightcmd', 'f19') -- Right Cmd → F19
remapper:remap(0x0a, 0x32)        -- ISO 외장 키보드 §/± → backtick/tilde
remapper:register()

-- 한국어 입력 중 화면 상하단에 초록 바 표시
require('modules.inputsource_aurora')
-- CapsLock(F13) 누르는 동안 vim 모드, 뗄 때 ESC + 영어 전환
require('modules.vim')

