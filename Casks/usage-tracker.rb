cask "usage-tracker" do
  version "1.0.1"
  sha256 "01ce466cc5e704c3e3f11d065055be2d0288495105484e9d04091a3c34af653c"

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
