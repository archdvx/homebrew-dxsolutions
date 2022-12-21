cask 'dxreminders' do
  version '1.21.0'
  sha256 'e8e056a9d40a98c011b6ad93b8faa10f44dd8d02479dcabaeae721e850b44ce3'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :catalina"

  app "dxreminders.app"
end

