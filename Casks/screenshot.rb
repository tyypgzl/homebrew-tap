cask "screenshot" do
  version "1.0.0"
  sha256 "481abbcf9e65a5ad62958a7b236d474c79c1bbe19112baccfe87d0175329c0ed"

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
