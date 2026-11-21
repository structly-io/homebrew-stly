cask "stly" do
  version "0.1.85"
  sha256 "8f9a5f8512aa9c1f04d1ae5d047b38d2320754d988ad59ea2d977a5d5b5f87da"

  url "https://github.com/structly-io/stly/releases/download/stly-v#{version}/stly-darwin-arm64.tar.gz"
  name "stly"
  desc "Agentic CLI for the Structly catalog"
  homepage "https://github.com/structly-io/stly"

  depends_on :macos
  depends_on arch: :arm64

  binary "stly-darwin-arm64/stly"

  # Not yet signed with a Developer ID or notarized; clear quarantine so the CLI can run.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-d", "com.apple.quarantine", "{{staged_path}}/stly-darwin-arm64/stly"],
        must_succeed: false
  end
end
