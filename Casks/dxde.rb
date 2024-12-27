cask 'dxde' do
  version '1.40.13'
  sha256 '88a2aaf977b1fa0039c7a686ec7c60e96cc5201a5fc757479f213dd767fc368b'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :monterey"

  app "dxde.app"
end

