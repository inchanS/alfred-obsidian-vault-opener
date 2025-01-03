on run(argv)
    set vaultName to item 1 of argv
    tell application "Obsidian"
        open location "obsidian://open?vault=" & vaultName
    end tell
end run