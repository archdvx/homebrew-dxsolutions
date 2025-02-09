cask 'dxtime' do
  version '1.2.4'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "https://downloads.sourceforge.net/dxtime/dxtime-#{version}.dmg",
      verified: "downloads.sourceforge.net/dxtime/"
  name 'dxtime'
  desc 'Program for time tracking'
  homepage 'https://dxtime.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "dxtime.app"
end

