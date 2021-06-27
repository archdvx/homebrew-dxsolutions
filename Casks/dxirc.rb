cask 'dxirc' do
  version '1.30.0'
  sha256 '5cd609d646fbc7f5f02c32dfb9e93d7ae22e826a60f3ea459f8bb723543a4fe4'

  url "https://downloads.sourceforge.net/dxirc/dxirc-#{version}.dmg",
      verified: "downloads.sourceforge.net/dxirc/"
  name 'dxirc'
  desc 'A simple IRC client'
  homepage 'https://dxirc.org/'

  depends_on macos: ">= :mojave"

  app "dxirc.app"
end

