cask "docksly" do
  version "1.2.0"
  sha256 "8500de5a10450ea36cd9cf6f1b9d47ef3b6ecb1576e7212a7cdf4ed3f5afee5d"

  url "https://github.com/julianromli/docksly/releases/download/v#{version}/Docksly-#{version}.dmg"
  name "Docksly"
  desc "Save named Dock layouts and switch them with a click, hotkey, or Focus"
  homepage "https://docksly.faizintifada.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Docksly.app"

  zap trash: [
    "~/Library/Application Support/Docksly",
    "~/Library/Preferences/app.docksly.Docksly.plist",
  ]
end
