defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock tilesize -int 16
killall Dock

defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false
killall cfprefsd

defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 20
sudo shutdown -r now
