cask 'dxde' do
  version '1.40.8'
  sha256 'bd8c12b2af19f2a41840fd72465c6b2dd08c7acbf5cb91cc59e3d242dd2291c0'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxde.app"
end

