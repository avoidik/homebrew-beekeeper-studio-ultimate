cask "beekeeper-studio-ultimate" do
  arch arm: "-arm64"

  version "4.6.4"
  sha256 arm:   "4928b994f389f7c25f6d4cacb1079e783408f8c3147988c744eead6df4cc441c",
         intel: "649f3f4d34ebfe35b6d7babca38b3ec889a2314c727142512bbf26e9fca28351"

  url "https://github.com/beekeeper-studio/ultimate-releases/releases/download/v#{version}/Beekeeper-Studio-Ultimate-#{version}#{arch}.dmg",
      verified: "github.com/beekeeper-studio/ultimate-releases/"
  name "Beekeeper Studio Ultimate"
  desc "Cross platform SQL editor and database management app"
  homepage "https://beekeeperstudio.io/get/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: [
    "beekeeper-studio",
  ]

  auto_updates true

  app "Beekeeper Studio Ultimate.app"

  zap trash: [
    "~/Library/Application Support/beekeeper-studio",
    "~/Library/Application Support/Caches/beekeeper-studio-updater",
    "~/Library/Caches/io.beekeeperstudio.desktop",
    "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
    "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
    "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
  ]
end
