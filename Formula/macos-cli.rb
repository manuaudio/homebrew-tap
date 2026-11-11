class MacosCli < Formula
  desc "Drive your Mac from the command line, with JSON for agents"
  homepage "https://github.com/manuaudio/macos-cli"
  url "https://github.com/manuaudio/macos-cli/releases/download/v0.9.0/macos-cli-0.9.0-arm64.zip"
  sha256 "0872f6f57a12c2a90c1ff5a8f2b96a14e6b63c747f0b94036f8ba8089f6c7d63"
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
