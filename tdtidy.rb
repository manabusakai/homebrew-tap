class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.0.1"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.1/tdtidy_0.0.1_darwin_arm64.tar.gz"
      sha256 "92fc24ebeb92cb919be96f608a81510c589270e12f8a1b742db413ba864228ba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.1/tdtidy_0.0.1_darwin_amd64.tar.gz"
      sha256 "f19dea8635a5b5a90e48edb87c65fe58006cfce2780dba55db10d8f7d8a55a1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.1/tdtidy_0.0.1_linux_arm64.tar.gz"
      sha256 "6f8be8ecaf146599d4a17696116a97af6efef10a535e5ab3072782c62ad91a07"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.1/tdtidy_0.0.1_linux_amd64.tar.gz"
      sha256 "9e53df315283035daaf354a27a7f6db617d4ea5353a3a3c1054089f5f5766b34"
    end
  end
end
