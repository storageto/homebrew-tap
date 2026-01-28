# Homebrew formula for storageto
# To install: brew install storageto/tap/storageto

class Storageto < Formula
  desc "CLI tool for storage.to - simple file sharing"
  homepage "https://github.com/storageto/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-arm64.tar.gz"
      sha256 "7936fd3639c8d71ecf939ca152f3e4126405013e9e743fcca6ed2b45e23fbd61"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-amd64.tar.gz"
      sha256 "af2f492c08acbfe19ab2122fa5a97633a266f63ac77118124ac291b59fe0a31d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-arm64.tar.gz"
      sha256 "97d7abd28b6754d957f9542ed8a4b32fde0114ee87cbcbf5d6d1e4cd34474f81"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-amd64.tar.gz"
      sha256 "2af6992bf37330df458ccc41eaefa6cf63b5f65d703b59d843f3fe53c04de097"
    end
  end

  def install
    bin.install "storageto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/storageto version")
  end
end
