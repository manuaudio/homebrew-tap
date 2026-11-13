class MacosCli < Formula
  desc "Drive your Mac from the terminal, with JSON output for agents"
  homepage "https://github.com/manuaudio/macos-cli"
  url "https://github.com/manuaudio/macos-cli/releases/download/v0.10.0/macos-cli-0.10.0-arm64.zip"
  sha256 "0132296261b67aa93901bde9c88a81fd6b12bd9e19f11a326fc90a828c56a63b"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "macos"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/macos --version").strip
  end
end
