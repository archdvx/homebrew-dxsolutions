cask 'wxdfast' do
  version '0.70.1'
  sha256 '3c8244190362c25d6d783fbc79c66d80a56b352a5b3fe66046425e73c18d30a8'

  url "https://github.com/archdvx/wxdfast/releases/download/v#{version}/wxDownloadFast-#{version}.dmg"
  name 'wxDownload Fast'
  desc 'Multithread download manager'
  homepage 'https://wxdfast.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "wxDownloadFast.app"
end

