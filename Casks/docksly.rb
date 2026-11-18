cask "docksly" do
  version "1.4.0"
  sha256 "1a805ff7a05f91ada6a022c9cbae896eb7353ceef841ca69ca5cf9ecef43f446"

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
