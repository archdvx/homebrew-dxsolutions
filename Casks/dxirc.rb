cask 'dxirc' do
  version '1.40.0'
  sha256 '631d25665229fe8b3b2baed14f6a4c2ac2eb6e2bd446a2a074bde4069ba8bf51'

  url "https://downloads.sourceforge.net/dxirc/dxirc-#{version}.dmg",
      verified: "downloads.sourceforge.net/dxirc/"
  name 'dxirc'
  desc 'A simple IRC client'
  homepage 'https://dxirc.org/'

  depends_on macos: ">= :mojave"

  app "dxirc.app"
end

