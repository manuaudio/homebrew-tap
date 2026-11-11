class MacosCli < Formula
  desc "Drive your Mac from the terminal, with JSON output for agents"
  homepage "https://github.com/manuaudio/macos-cli"
  url "https://github.com/manuaudio/macos-cli/releases/download/v0.9.1/macos-cli-0.9.1-arm64.zip"
  sha256 "21441774842bde2556eb05ddc51c36e9d99425e3719c302c47d73ffc2615e0fe"
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
