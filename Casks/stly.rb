cask "stly" do
  version "0.1.84"
  sha256 "5f28aed6bf91e5b895a2a5da737b90c6b9ba711b10c383d5148a45f6e6856b8a"

  url "https://github.com/structly-io/stly/releases/download/stly-v#{version}/stly-darwin-arm64.tar.gz"
  name "stly"
  desc "Agentic CLI for the Structly catalog"
  homepage "https://github.com/structly-io/stly"

  depends_on :macos
  depends_on arch: :arm64

  binary "stly-darwin-arm64/stly"
end
