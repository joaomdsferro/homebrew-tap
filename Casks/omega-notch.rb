cask "omega-notch" do
  version "0.0.4"
  sha256 "d53216729c88371ad84fb95c57770882d57794876903392c234e5d40eb9db26f"

  url "https://github.com/joaomdsferro/omega-notch/releases/download/v#{version}/omega-notch-#{version}-macos-universal.dmg"
  name "Omega Notch"
  desc "AI coding tools' usage limits and live sessions, in a notch"
  homepage "https://github.com/joaomdsferro/omega-notch"

  # Releases are GitHub pre-releases, which the release strategies skip.
  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "Omega Notch.app"

  uninstall quit: "app.wisething.omeganotch"

  zap trash: [
    "~/Library/Application Support/omega-notch",
    "~/Library/Preferences/app.wisething.omeganotch.plist",
  ]
end
