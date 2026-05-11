# Homebrew formula for storageto
# To install: brew install storageto/tap/storageto

class Storageto < Formula
  desc "CLI tool for storage.to - simple file sharing"
  homepage "https://github.com/storageto/cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-arm64.tar.gz"
      sha256 "eee0400a76be82101ea0fe4c455c4865c47de0b60d314c139bd18c82f2f50eea"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-darwin-amd64.tar.gz"
      sha256 "583081ad5189063ae1138a90ae7d72ab491364f2de28cfbc8c62d4fc22eebb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-arm64.tar.gz"
      sha256 "ad79700699a828d0135d87077fbd9bd0970987e047c316f0f72fea5633a5890c"
    end
    on_intel do
      url "https://github.com/storageto/cli/releases/download/v#{version}/storageto-linux-amd64.tar.gz"
      sha256 "225df3400ce81d9362fbd34c868bc8e828508f69b8543735ad4e35045461cdb6"
    end
  end

  def install
    bin.install "storageto"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/storageto version")
  end
end
