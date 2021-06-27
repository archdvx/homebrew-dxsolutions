cask 'dxtime' do
  version '1.2.3'
  sha256 'f02b8665da785baa18a8677fe8eef5622a7d2be4df7ab3b5dd34374dddab4bed'

  url "https://downloads.sourceforge.net/dxtime/dxtime-#{version}.dmg",
      verified: "downloads.sourceforge.net/dxtime/"
  name 'dxtime'
  desc 'Program for time tracking'
  homepage 'https://dxtime.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "dxtime.app"
end

