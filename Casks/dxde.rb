cask "dxde" do
  arch arm: "arm64", intel: "x86_64"
  version "1.40.14"
  sha256 arm: "021fba3069bb080d3674a41c1fc32e84fd01be614ceca51f169e720f65f9a65e",
         intel: "d75fe305875a82ac3fe5d15517a0adccca9bae1b287da92421cb0adb3e06f85f"      

  url "https://files.dxsolutions.org/dxde-#{version}-#{arch}.dmg"
  name "dxde"
  desc "Program pro vedeni danove evidence (for czech tax records)"
  homepage "https://dxde.dxsolutions.org/"

  depends_on macos: ">= :sonoma"

  app "dxde.app"
end

