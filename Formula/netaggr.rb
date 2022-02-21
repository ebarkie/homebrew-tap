class Netaggr < Formula
  desc "Network aggregator/summarizer"
  homepage "https://github.com/ebarkie/netaggr"
  version "1.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-darwin-amd64.zip"
      sha256 "ea3e0d454e3f0cf08cd8d98bdc06135dd1c37310aa21452029bfa10e1f0d2550"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-darwin-arm64.zip"
      sha256 "2ec814244581f84ce7457a7ba2fa9b751c75d9b6fc600b27aeada5940dcc9771"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-linux-amd64.zip"
      sha256 "28a83d3c93e86dc0feb8e64e5077a8ac3a271a19c40096c8d9b03efac3baa995"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-linux-arm.zip"
      sha256 "a961dd43158135ad117b60ec26e1474d1cce5b1c29ac819b0192b5ed8390ed87"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-linux-arm64.zip"
      sha256 "2e5125ba7eb2fdca62eb8c597e058f87c78df61386826bd9c1796da3a8506290"
    end
  end

  def install
    bin.install Dir.glob("netaggr-*") => "netaggr"
  end
end
