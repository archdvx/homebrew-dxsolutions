cask 'dxirc' do
  arch arm: "arm64", intel: "x86_64"
  version '1.50.0'
  sha256 arm: "ed314445ecfb1777721af5e0b47b08991e773e9888cf40a178195bf7ec33e8dc",
         intel: "960e375438a52ab70db8f0aa08ae29178992053dfa625c5c01de0c6434bd5998"

  url "https://downloads.sourceforge.net/dxirc/dxirc-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/dxirc/"
  name 'dxirc'
  desc 'A simple IRC client'
  homepage 'https://dxirc.org/'

  depends_on macos: :sequoia

  app "dxirc.app"
end
