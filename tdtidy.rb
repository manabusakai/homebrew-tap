class Tdtidy < Formula
  desc "A command line tool for managing ECS task definitions."
  homepage "https://github.com/manabusakai/tdtidy"
  version "0.0.4"
  license "MIT"

  def install
    bin.install "tdtidy"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.4/tdtidy_0.0.4_darwin_arm64.tar.gz"
      sha256 "88d62cc91ebce30e21d8cd01c80df950cb3bcb4947a09b6543090116de2fc57f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.4/tdtidy_0.0.4_darwin_amd64.tar.gz"
      sha256 "952ca29fe955e4d197ad6fcc490bd2ceaac55c83c170373863719c3cd89def14"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.4/tdtidy_0.0.4_linux_arm64.tar.gz"
      sha256 "53f1312cbb27adeadd68c65830fe8f74fe8fe47b5d8817a65e8e445afd64dba5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/manabusakai/tdtidy/releases/download/v0.0.4/tdtidy_0.0.4_linux_amd64.tar.gz"
      sha256 "2d842a884aecbd8a992e51511226f70ff264885f8518f8a3a31caf8a19945711"
    end
  end
end
