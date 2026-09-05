cask 'dxtime' do
  arch arm: "arm64", intel: "x86_64"  
  version '1.2.6'
  sha256 arm: "0131230248d6c3a83a72456487c3208c446de8edb20ebb2ec7cc0e461a93e57e",
         intel: "06985abf7e00f9777f47d355c06f1f1a6c7ccc5487a1d636e6544f2df4e42cd6" 

  url "https://downloads.sourceforge.net/dxtime/dxtime-#{version}-#{arch}.dmg",
      verified: "downloads.sourceforge.net/dxtime/"
  name 'dxtime'
  desc 'Program for time tracking'
  homepage 'https://dxtime.dxsolutions.org/'

  depends_on macos: :sonoma

  app "dxtime.app"
end

