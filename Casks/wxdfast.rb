cask 'wxdfast' do
  version '0.70.2'
  sha256 '88d0cabf3dbd7ba96310804650aae73a88419b136baaad21fbcf7330abe3e479'

  url "https://github.com/archdvx/wxdfast/releases/download/v#{version}/wxDownloadFast-#{version}.dmg"
  name 'wxDownload Fast'
  desc 'Multithread download manager'
  homepage 'https://wxdfast.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "wxDownloadFast.app"
end

