cask 'dxde' do
  version '1.40.6'
  sha256 'b1cfd57e5f5c8e665dda72df7945a81d8ac73272c831124d4af0dcf04df956df'

  url "https://files.dxsolutions.org/dxde-#{version}.dmg"
  name 'dxde'
  desc 'Program pro vedeni danove evidence (for czech tax records)'
  homepage 'https://dxde.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "dxde.app"
end

