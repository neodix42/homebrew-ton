class Ton < Formula
  desc "A collection of The Open Network core software and utilities."
  homepage "http://github.com/ton-blockchain/ton"

  if Hardware::CPU.arm?  
    head "https://github.com/neodiX42/ton/releases/latest/download/ton-arm64.tar.gz"
  else
    head "https://github.com/ton-blockchain/ton/releases/download/v2023.04/ton-mac-x86-64.zip"
  end
  license "LGPL-2.0-only"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end
end
