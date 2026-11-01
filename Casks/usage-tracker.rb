cask "usage-tracker" do
  version "1.1.3"
  sha256 "bc4dead17cb01e7b86f1fd3e14683becc94a22b7c40ece4581ff15321e1a28d2"

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
