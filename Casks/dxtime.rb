cask 'dxtime' do
  arch arm: "arm64", intel: "x86_64"  
  version '1.2.5'
  sha256 arm: "0c191d77a16704759a3445a027c499e38f79422336d2f89e222746792ba22a11",
         intel: "a8782f849f3b77fa54ac48950a4107ee24a8c32484b7fa23b72290d5f9b840a1" 

  url "https://downloads.sourceforge.net/dxtime/dxtime-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/dxtime/"
  name 'dxtime'
  desc 'Program for time tracking'
  homepage 'https://dxtime.dxsolutions.org/'

  depends_on macos: :sonoma

  app "dxtime.app"
end

