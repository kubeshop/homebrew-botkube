# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.5.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/botkube/releases/download/v1.5.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "f8d58ad634927ade19caf2ab6e12cc28b1c77020d8559c21634dec19c1eb3380"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.5.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "732c7f2a17fb9c26ccbd4749167027cd9df9c15353db7e3f60d3b947442abdd6"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.5.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
      sha256 "ac5c37f44c58a91b42693e1b24b26e2259fbf5b49835ae222217c95995b18493"

      def install
        bin.install "botkube-linux-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/botkube/releases/download/v1.5.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
      sha256 "13bb6ae16164dcb1ead9c726afccb9ed90dcafb918bf3de4f65e3ea86a2d6560"

      def install
        bin.install "botkube-linux-arm64" => "botkube"
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
