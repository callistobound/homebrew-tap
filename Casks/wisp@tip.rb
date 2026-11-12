cask "wisp@tip" do
  version :latest
  sha256 :no_check

  url "https://github.com/callistobound/wisp/releases/download/tip/Wisp.dmg"
  name "Wisp"
  desc "Terminal emulator, a downstream fork of Ghostty"
  homepage "https://github.com/callistobound/wisp"

  auto_updates true
  conflicts_with cask: "wisp"
  depends_on macos: :ventura

  app "Wisp.app"
  binary "#{appdir}/Wisp.app/Contents/MacOS/wisp"
  bash_completion "#{appdir}/Wisp.app/Contents/Resources/bash-completion/completions/wisp.bash"
  zsh_completion "#{appdir}/Wisp.app/Contents/Resources/zsh/site-functions/_wisp"
  fish_completion "#{appdir}/Wisp.app/Contents/Resources/fish/vendor_completions.d/wisp.fish"

  uninstall quit: "com.callistobound.wisp"

  zap trash: [
    "~/.cache/wisp",
    "~/.config/wisp",
    "~/Library/Application Support/com.callistobound.wisp",
    "~/Library/Caches/com.callistobound.wisp",
    "~/Library/HTTPStorages/com.callistobound.wisp",
    "~/Library/Preferences/com.callistobound.wisp.plist",
    "~/Library/Saved Application State/com.callistobound.wisp.savedState",
    "~/Library/WebKit/com.callistobound.wisp",
  ]
end
