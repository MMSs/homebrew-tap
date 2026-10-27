cask "usage-tracker" do
  version "1.1.0"
  sha256 "9cac25f8e38f0aea07903df6b11a30fe616f9eb70ee4ab028f81dadc35dc9eeb"

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
