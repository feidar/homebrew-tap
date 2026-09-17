cask "mdconverter" do
  version "1.1.0"
  sha256 "e612a81f84204a0f8f86482a4c4c952ddac9497875e7a4a4f85fe492643f3a93"

  url "https://dl.matousjanecek.cz/mdconverter/releases/MDConverter-#{version}.dmg"
  name "MDConverter"
  desc "Offline document and media to Markdown converter powered by MarkItDown"
  homepage "https://janecek.app/mdconverter/"

  livecheck do
    url "https://dl.matousjanecek.cz/mdconverter/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MDConverter.app"

  zap trash: [
    "~/Library/Caches/cz.mdconverter.app",
    "~/Library/HTTPStorages/cz.mdconverter.app",
    "~/Library/Preferences/cz.mdconverter.app.plist",
  ]
end
