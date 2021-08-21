cask 'wxdfast' do
  version '0.70.0'
  sha256 'c2898f3eaed981f0b3daa5d026845970ac9a49d8236bd3c55e3f6c2622191021'

  url "https://github.com/archdvx/wxdfast/releases/download/v#{version}/wxDownloadFast-#{version}.dmg"
  name 'wxDownload Fast'
  desc 'Multithread download manager'
  homepage 'https://wxdfast.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "wxDownloadFast.app"
end

