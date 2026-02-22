cask "dxde" do
  arch arm: "arm64", intel: "x86_64"
  version "1.40.14"
  sha256 arm: "806e231ad92e213b2a730d5df60495dbd83940fc877b01aedbc09fee4b630e6f",
         intel: "d75fe305875a82ac3fe5d15517a0adccca9bae1b287da92421cb0adb3e06f85f"      

  url "https://files.dxsolutions.org/dxde-#{version}-#{arch}.dmg"
  name "dxde"
  desc "Program pro vedeni danove evidence (for czech tax records)"
  homepage "https://dxde.dxsolutions.org/"

  depends_on macos: ">= :sonoma"

  app "dxde.app"
end

