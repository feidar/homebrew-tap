cask "mdconverter" do
  version "1.0.0"
  sha256 "e35a92270478962dd324f1ce9925e63deb420d234f475f4ef979f7963f11c1af"

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
