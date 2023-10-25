class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.0.2"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.2/tdtidy_0.0.2_darwin_arm64.tar.gz"
      sha256 "84e63b6c7a3fc3fc7f43f0f8816059b2266948d9cf9f092a939452f33deae07c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.2/tdtidy_0.0.2_darwin_amd64.tar.gz"
      sha256 "84046d2b0256e5c1601602200f15b8d8aa5a6dfd45351aeef92185240c7ef1ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.2/tdtidy_0.0.2_linux_arm64.tar.gz"
      sha256 "7a35e10511b1e06300d6c1b828a280dde7332970649fa5c0464025467fa8a6ce"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.2/tdtidy_0.0.2_linux_amd64.tar.gz"
      sha256 "a6809fe2a6eef7ffe51397311017c79dc278bd45bc6597816df248fbed9eefe4"
    end
  end
end
