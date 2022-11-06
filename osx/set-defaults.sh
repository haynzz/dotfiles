# Inspired by zach holman
#   https://github.com/holman/dotfiles/blob/master/osx/set-defaults.sh
# and mathias bynens
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Show the ~/Library folder.
chflags nohidden ~/Library

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `Nlsv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Show the home folder instead of all files when opening a new finder window
defaults write com.apple.finder NewWindowTarget PfHm

# Don't include the name when copying the email address in mail
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool NO

# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom left right corner → Start screen saver
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

# Disable Gatekeeper
sudo spctl --master-disable

# Enable calculate all sizes
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ExtendedListViewSettings:calculateAllSizes" bool true'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Delete "StandardViewSettings:ListViewSettings:calculateAllSizes" bool'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.apple.finder.plist" -c 'Add "StandardViewSettings:ListViewSettings:calculateAllSizes" bool true'

# Disable iCloud as default save location
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false