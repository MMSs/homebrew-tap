cask "usage-tracker" do
  version "1.1.2"
  sha256 "64108e639b81300c9a65ab96e37405d7186d53f013833aaad753ca05d2d4ea9c"

  url "https://github.com/MMSs/usage-tracker/releases/download/v#{version}/Usage-Tracker-#{version}.zip"
  name "Usage Tracker"
  desc "Menu bar usage and spend for Cursor, Anthropic and OpenAI"
  homepage "https://github.com/MMSs/usage-tracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Usage Tracker.app"

  uninstall quit: "com.mohabsam.usage-tracker"

  zap trash: [
    "~/Library/Caches/com.mohabsam.usage-tracker",
    "~/Library/HTTPStorages/com.mohabsam.usage-tracker",
    "~/Library/Preferences/com.mohabsam.usage-tracker.plist",
  ]
end
