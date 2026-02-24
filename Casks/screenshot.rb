cask "screenshot" do
  version "1.0.0"
  sha256 "8a6cf1efcf2ff4160549e6dd04193bfa7514d3d8a009d668060ed9814b34a740"

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
