cask "stly" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.83"
  sha256 arm:   "256ef93d9b8eb87b9c14bb48da1fde2ab36dc28131f93d91e1b8fee62a23a3a9",
         intel: "0de29684c8096eeabcf9a383557993549db7d8e37fe600e8f33a8f89666b87e7"

  url "https://github.com/structly-io/stly/releases/download/stly-v#{version}/stly-darwin-#{arch}.tar.gz"
  name "stly"
  desc "Agentic CLI for the Structly catalog"
  homepage "https://github.com/structly-io/stly"

  depends_on :macos

  binary "stly-darwin-#{arch}/stly"
end
