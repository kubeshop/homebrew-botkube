# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.9.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.9.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "63bc72fe49b85a8a82f7804265086a310946073b1a5ad848b67c62a97e081371"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/botkube/releases/download/v1.9.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "81eb4b67bdc4509ca871171bc94cf90265128f7529bbf703fde71a87daeaea8c"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/botkube/releases/download/v1.9.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
      sha256 "ec9be3937748f9e3ceaf98b82aa8a1b64499966793b6dd1a03a195aae0cbfc3a"

      def install
        bin.install "botkube-linux-arm64" => "botkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.9.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
      sha256 "78bf58f36642c56a37bcbe398c07a43605f85c6a1f3e34d0373253c377bc4b2d"

      def install
        bin.install "botkube-linux-amd64" => "botkube"
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
