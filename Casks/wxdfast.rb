cask 'wxdfast' do
  version '0.70.4'
  sha256 '688e28403a1d50a9e7e9a703d5232f2c9b151f3e9edbe994004bbae9966c60ed'

  url "https://github.com/archdvx/wxdfast/releases/download/v#{version}/wxDownloadFast-#{version}.dmg"
  name 'wxDownload Fast'
  desc 'Multithread download manager'
  homepage 'https://wxdfast.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "wxDownloadFast.app"
end

