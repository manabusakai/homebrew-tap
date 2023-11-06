class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.0.3"
  license "MIT"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.3/tdtidy_0.0.3_darwin_arm64.tar.gz"
      sha256 "2eecadc522cac0986945b43b86837912416edbd26e83b3aa7365dc029506e8f3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.3/tdtidy_0.0.3_darwin_amd64.tar.gz"
      sha256 "1346827a1ba1f374f97a2e14513b85f667f8b63ed997f41bb862123325d4ab68"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.3/tdtidy_0.0.3_linux_arm64.tar.gz"
      sha256 "aadf427c30bda967eff44dc481e6e58f0651f1875e7d2752ec9d3118bbd59a60"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.3/tdtidy_0.0.3_linux_amd64.tar.gz"
      sha256 "8e30debe837b3a4ff4ae5bcf480ea4c91481b953c0bb5d9d50af499d6d9947ab"
    end
  end
end
