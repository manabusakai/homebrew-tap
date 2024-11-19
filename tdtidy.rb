class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions. `tdtidy` can deregister and delete old task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.2.0/tdtidy_0.2.0_darwin_arm64.tar.gz"
      sha256 "6eb86d000b19c86df9b5ada2cef409571527ca16dba0fc119c3e1a932a39b382"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.2.0/tdtidy_0.2.0_darwin_amd64.tar.gz"
      sha256 "8b6963ab964963861aa1994c9e59d172ce0d98f0a82083feecabd7e24192e7e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.2.0/tdtidy_0.2.0_linux_arm64.tar.gz"
      sha256 "61bda120131f3e828472faf13f7af9002b4c63bf2b82881dbf9a7afe51e9572d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.2.0/tdtidy_0.2.0_linux_amd64.tar.gz"
      sha256 "2d5e14fed1861a280763658cb233781fc3730400e0fd0a90e35552c764b46e09"
    end
  end
end
