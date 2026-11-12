cask "trrek" do
  version "0.6.1"
  sha256 "27a1f22700bb6a6ef18c8f2b04cfb9b91ce44b18dc7365bbe2d9957970d67fdd"

  url "https://github.com/burakseyitkara1/trrek/releases/download/v#{version}/trrek-v#{version}.dmg"
  name "trrek"
  desc "Turns the edges of the trackpad into single-finger controls"
  homepage "https://github.com/burakseyitkara1/trrek"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "trrek.app"

  zap trash: [
    "~/Library/Caches/com.burakseyitkara.trrek",
    "~/Library/Preferences/com.burakseyitkara.trrek.plist",
  ]
end
