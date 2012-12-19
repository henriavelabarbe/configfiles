import XMonad
import XMonad.Config.Azerty
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

myManageHook = composeAll
    [ className =? "Gimp"      --> doFloat
    , className =? "Vncviewer" --> doFloat
    , className =? "Vmware"    --> doShift "4"
    ]

myfocusedBorderColor = "#b58900"

main = do
    xmproc <- spawnPipe "/home/hch/.cabal/bin/xmobar /home/hch/.xmonad/xmobar.hs"
    xmonad $ azertyConfig
        { manageHook = manageDocks <+> myManageHook <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP $ defaultPP { ppOutput = hPutStrLn xmproc }
        , focusedBorderColor = myfocusedBorderColor
        , modMask = mod4Mask 
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((mod4Mask .|. shiftMask .|. controlMask, xK_F12), spawn "zenity --question --text 'Are you sure you want to halt?' && gksudo halt")
        ]
