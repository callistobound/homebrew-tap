cask "wisp" do
  version "1.4.0-wisp.1"
  sha256 "eecd1a3eae8d4ef205e103fb8f5728001b1e905e696dd098388b0ee632ee5fa8"

  url "https://github.com/callistobound/wisp/releases/download/v#{version}/Wisp.dmg"
  name "Wisp"
  desc "Terminal emulator, a downstream fork of Ghostty"
  homepage "https://github.com/callistobound/wisp"

  auto_updates true
  conflicts_with cask: "wisp@tip"
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
