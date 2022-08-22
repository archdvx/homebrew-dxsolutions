cask 'dxirc' do
  version '1.40.1'
  sha256 '1efec3e89c584cbf47b7ac5241cf9999f151251c2d92830f26cbce18950d7427'

  url "https://downloads.sourceforge.net/dxirc/dxirc-#{version}.dmg",
      verified: "downloads.sourceforge.net/dxirc/"
  name 'dxirc'
  desc 'A simple IRC client'
  homepage 'https://dxirc.org/'

  depends_on macos: ">= :catalina"

  app "dxirc.app"
end

