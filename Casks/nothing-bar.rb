cask "nothing-bar" do
  version "2.8.0"
  sha256 "0bc4d7ee0150b5a1f2631a5d8f4c1716563659f46fa39f437bf8c834e8228f42"

  url "https://github.com/bestK1ngArthur/nothing-bar/releases/download/#{version}/nothing-bar-#{version}.zip"
  name "Nothing Bar"
  desc "Menu bar app to control Nothing and CMF headphones"
  homepage "https://github.com/bestK1ngArthur/nothing-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "NothingBar.app"

  zap trash: [
    "~/Library/Application Support/NothingBar",
    "~/Library/Preferences/com.bestk1ngarthur.nothing-bar.plist",
  ]
end
