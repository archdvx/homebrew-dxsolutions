cask 'dxde' do
  version '1.40.11'
  sha256 '6bf916f970e6dded6c7bca00461abcb033766d67103877a4bba017c199800ff5'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxde.app"
end

