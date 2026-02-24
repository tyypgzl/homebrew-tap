cask "screenshot" do
  version "1.0.1"
  sha256 "fba09c5c3403dac2916b74fba3bf155f0ca6ceba76dd72bb06147411050e5df7"

  url "https://github.com/tyypgzl/screenshot/releases/download/v#{version}/Screenshot-v#{version}-mac.zip"
  name "Screenshot"
  desc "Lightweight macOS menu bar app for capturing and annotating screenshots"
  homepage "https://github.com/tyypgzl/screenshot"

  depends_on macos: ">= :ventura"

  app "Screenshot.app"

  zap trash: [
    "~/Library/Preferences/dev.tagstudio.Screenshot.plist",
    "~/Library/Caches/dev.tagstudio.Screenshot",
  ]
end
