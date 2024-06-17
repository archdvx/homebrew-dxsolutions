cask 'dxreminders' do
  version '1.21.3'
  sha256 'c0023df3dc5d766d4c0d47e786d8dcceef2d05181474ebdb3d1bac5167ac43a3'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :monterey"

  app "dxreminders.app"
end

