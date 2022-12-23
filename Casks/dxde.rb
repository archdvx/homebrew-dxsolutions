cask 'dxde' do
  version '1.40.10'
  sha256 'a90d2c307dade6a1a019ae34ffa64d5be5de42ccfad40215458764202793a0fa'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxde.app"
end

