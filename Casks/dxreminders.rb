cask 'dxreminders' do
  version '1.21.2'
  sha256 '5299f2b50ae6c1b30ded53da583e8939b5bc22aac1635b6a773626ce51c9f464'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :bigsur"

  app "dxreminders.app"
end

