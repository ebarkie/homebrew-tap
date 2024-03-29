# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Netaggr < Formula
  desc "Network aggregator/summarizer"
  homepage "https://github.com/ebarkie/netaggr"
  version "1.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.7/netaggr_1.3.7_Darwin_arm64.tar.gz"
      sha256 "8f59160a5cc5e0b96d841c2561a1a7a670bcbc499e92919b787ab33d5fd5c994"

      def install
        bin.install "netaggr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.7/netaggr_1.3.7_Darwin_x86_64.tar.gz"
      sha256 "e949152bef37d9e2fa5dab955ebcc12b54005b95b0390e8eb850cba83596f65e"

      def install
        bin.install "netaggr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.7/netaggr_1.3.7_Linux_x86_64.tar.gz"
      sha256 "5d391d2db8262e945013e38fdb8e70f51bc92c00b9d79da5c27161e0576614dc"

      def install
        bin.install "netaggr"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.7/netaggr_1.3.7_Linux_arm64.tar.gz"
      sha256 "a67b717febc50d026baa8488d138e0e37a5d5534540032f767dcafd0c6dc9776"

      def install
        bin.install "netaggr"
      end
    end
  end
end
