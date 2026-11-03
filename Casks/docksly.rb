cask "docksly" do
  version "1.3.2"
  sha256 "a87d1dbca5d0adce04b4ffbae0a8282a12e1057f000a1b51e3522fd7dfb99907"

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
