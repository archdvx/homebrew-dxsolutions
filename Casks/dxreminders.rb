cask 'dxreminders' do
  version '1.10.1'
  sha256 '68a0a7380999c8ab54156575688bfee1f49a55068f251e4611788305209c1465'

  url "https://files.dxsolutions.org/dxreminders-#{version}.dmg"
  name 'dxreminders'
  desc 'A simple program for reminders'
  homepage 'https://dxreminders.dxsolutions.org/'

  depends_on macos: ">= :mojave"

  app "dxreminders.app"
end

