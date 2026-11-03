cask "docksly" do
  version "1.3.0"
  sha256 "eef259b945d09ff627c6e354cccdd7162d715ea5ae2386d5bcf03de8763343a2"

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
