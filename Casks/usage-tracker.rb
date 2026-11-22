cask "usage-tracker" do
  version "1.3.0"
  sha256 "4d2e7226e097cb22ebb153a9568dfc966a6a4060d1928b23251a63fe9883800d"

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
  depends_on macos: :tahoe

  app "Usage Tracker.app"

  uninstall quit: "com.mohabsam.usage-tracker"

  zap trash: [
    "~/Library/Caches/com.mohabsam.usage-tracker",
    "~/Library/HTTPStorages/com.mohabsam.usage-tracker",
    "~/Library/Preferences/com.mohabsam.usage-tracker.plist",
  ]
end
