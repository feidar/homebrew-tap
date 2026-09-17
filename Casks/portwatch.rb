cask "portwatch" do
  version "1.3.3"
  sha256 "f0f64f5a09a8a305f9d105b24b251a3c8a5d60904337a04274acfea0cccb82d6"

  url "https://dl.matousjanecek.cz/releases/PortWatch-#{version}.dmg"
  name "PortWatch"
  desc "Menu bar viewer for open TCP/UDP ports with one-click process termination"
  homepage "https://janecek.app/portwatch/"

  livecheck do
    url "https://dl.matousjanecek.cz/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PortWatch.app"

  zap trash: [
    "~/Library/Caches/cz.portwatch.app",
    "~/Library/HTTPStorages/cz.portwatch.app",
    "~/Library/Preferences/cz.portwatch.app.plist",
  ]
end
