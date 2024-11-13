cask "beekeeper-studio-ultimate" do
  arch arm: "-arm64"

  version "4.6.8"
  sha256 arm:   "d472d23a9ceb74fe5036451ae429337d8accf937dd3fef2a8b9a8b9ab1944da3",
         intel: "0feb5243b7aa8591b806fc86882a21ec334e4eb42e40d3338f39ece7e035f08c"

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
