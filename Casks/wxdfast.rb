cask 'wxdfast' do
  version '0.70.0'
  sha256 '2c1572bbd2b703fc761a9b627532409f279297949b9af1ce369f3c3b04ea1682'

  url "https://github.com/archdvx/wxdfast/releases/download/v#{version}/wxDownloadFast-#{version}.dmg"
  name 'wxDownload Fast'
  desc 'Multithread download manager'
  homepage 'https://wxdfast.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "wxDownloadFast.app"
end

