class MacosCli < Formula
  desc "Drive your Mac from the command line, with JSON for agents"
  homepage "https://github.com/manuaudio/macos-cli"
  url "https://github.com/manuaudio/macos-cli/releases/download/v0.9.0/macos-cli-0.9.0-arm64.zip"
  sha256 "5b0485d31c3b5b4a8145872d31ac6e5398d603c1f92bf6b7b8b8bb6e25d41edb"
  version "0.9.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "macos"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/macos --version").strip
  end
end
