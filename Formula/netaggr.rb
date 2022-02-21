class Netaggr < Formula
  desc "Network aggregator/summarizer"
  homepage "https://github.com/ebarkie/netaggr"
  version "1.3.3"
  url "https://github.com/ebarkie/netaggr/releases/download/v#{version}/netaggr-darwin-amd64.zip"
  sha256 "3c988b7896218e7aa41858b06a61af36c55f5316bb56bfcc9bbc8109a4bc4128"

  def install
    bin.install "netaggr-darwin-amd64" => "netaggr"
  end
end
