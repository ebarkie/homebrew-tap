# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Netaggr < Formula
  desc "Network aggregator/summarizer"
  homepage "https://github.com/ebarkie/netaggr"
  version "1.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.8/netaggr_Darwin_x86_64.tar.gz"
      sha256 "6164860608ad02fb55af932589e87b7c5c92687540375569f36b53c1b4751e0c"

      def install
        bin.install "netaggr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ebarkie/netaggr/releases/download/v1.3.8/netaggr_Darwin_arm64.tar.gz"
      sha256 "4104ce90ea6156601bbd47e8f019eb3fee75be4164c091ef0b4ff9594870192b"

      def install
        bin.install "netaggr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ebarkie/netaggr/releases/download/v1.3.8/netaggr_Linux_x86_64.tar.gz"
        sha256 "76497f8de4f6642bc08d00d0f74e5cca94cf887d75921370b0b106d7d75d62da"

        def install
          bin.install "netaggr"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ebarkie/netaggr/releases/download/v1.3.8/netaggr_Linux_arm64.tar.gz"
        sha256 "1ec36740950d1744df6c1fe8913745be4df1cc0a04b4f2ce3a9f938f2d58fc4c"

        def install
          bin.install "netaggr"
        end
      end
    end
  end
end
