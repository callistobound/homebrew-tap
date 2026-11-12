# Callisto Bound Homebrew Tap

```sh
brew trust callistobound/tap                     # once; Homebrew 7 requires it
brew install --cask callistobound/tap/wisp@tip   # every push to Wisp's downstream
brew install --cask callistobound/tap/wisp       # stable releases
```

[Wisp](https://github.com/callistobound/wisp) updates itself after install, so
`brew upgrade` leaves it alone. It isn't notarized: allow it once in System
Settings › Privacy & Security on first launch.

`Casks/wisp.rb` is written by Wisp's release workflow; don't edit it by hand.
