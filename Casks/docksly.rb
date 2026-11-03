cask "docksly" do
  version "1.3.1"
  sha256 "bc9cab4bb52a3ff05619609a59192a6aed661af21a80470a3436f585c9e37495"

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
