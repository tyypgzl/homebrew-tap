cask "screenshot" do
  version "1.0.2"
  sha256 "990626a3ec25e615435730983f57ea13a330f10e97b728c83014cb0a18bd7dca"

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
