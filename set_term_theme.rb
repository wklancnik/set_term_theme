#!/usr/bin/ruby

themes = ["Homebrew","Tangerine","Silver","Blue"]
n = `osascript -e 'tell application \"Terminal\" to get the index of the last window'`
`osascript -e 'tell application "Terminal" to set current settings of front window to first settings set whose name is "#{themes[(Integer(n)-1)%themes.length]}"'`
