cask 'dxreminders' do
  version '1.21.1'
  sha256 'fcc1db46ce7045fd38547e3d431378475e6b4a35d974556753fba072f21a1add'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxreminders.app"
end

