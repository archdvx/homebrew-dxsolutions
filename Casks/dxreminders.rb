cask 'dxreminders' do
  version '1.20.0'
  sha256 'ce793c582844aacdeeb866003353617c5f3670bc34e6d44f556e630c1cad8e5c'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "dxreminders.app"
end

