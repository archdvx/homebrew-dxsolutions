cask 'dxde' do
  version '1.40.7'
  sha256 'ab546c78b8bbe253ba3825719b6f3c463f2a27f9fc69be43bce1fed5ef01d634'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxde.app"
end

