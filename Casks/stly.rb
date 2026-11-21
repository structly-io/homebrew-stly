cask "stly" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.81"
  sha256 arm:   "e210be692b10e4eca634a9279060ff4101342d35647df03e7daa9cd984e494d8",
         intel: "d77a729a712b93c6b82cb18e282e9fd65b225d0c2df7e1d9070b35df888dd17e"

  url "https://github.com/structly-io/stly/releases/download/stly-v#{version}/stly-darwin-#{arch}.tar.gz"
  name "stly"
  desc "Agentic CLI for the Structly catalog"
  homepage "https://github.com/structly-io/stly"

  depends_on :macos

  binary "stly-darwin-#{arch}/stly"
end
