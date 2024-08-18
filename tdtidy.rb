class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.1.0/tdtidy_0.1.0_darwin_arm64.tar.gz"
      sha256 "8feec8efe6451144097db92cf4c00b33965a607920590f4fcba37ee6f063c8b0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.1.0/tdtidy_0.1.0_darwin_amd64.tar.gz"
      sha256 "677ef492f60cf625709e0474bf9efd5ff78baa55861d63bcca94c08d6bb76bc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.1.0/tdtidy_0.1.0_linux_arm64.tar.gz"
      sha256 "b346a0c98d85c6c365603b23fb4e23bfa99261308c36a79738f258f22d73f533"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.1.0/tdtidy_0.1.0_linux_amd64.tar.gz"
      sha256 "102e4e44d08dd086f1ea0624dd7fa8a076c830d9591d510648c378d457639acd"
    end
  end
end
