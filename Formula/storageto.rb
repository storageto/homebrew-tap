# Homebrew formula for storageto
# To install: brew install storageto/tap/storageto

class Storageto < Formula
  desc "CLI tool for storage.to - simple file sharing"
  homepage "https://github.com/storageto/cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-arm64.tar.gz"
      sha256 "7fbbbe28af63bae8999e3a36773b5d299caebd34a8fde9087c715564a9869534"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-amd64.tar.gz"
      sha256 "fcb39facf9092122e9a9b3355285f1893d5ffd0bc3570d502ebdfb44cac0e096"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-arm64.tar.gz"
      sha256 "26e446cd6d3b1e16ba7b1f636f6101d51cdf3390da1a70925c167e9db920c439"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-amd64.tar.gz"
      sha256 "ccef8f6d4eda53f5dc5cfc557829e4980483f773b22c090cf237cc44f6df362d"
    end
  end

  def install
    bin.install "storageto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/storageto version")
  end
end
