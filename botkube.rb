# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.4.0/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "975ab1396d6a3c721d7e9d282dd81d2ea81d10e16640bdc21a51a75a350bf1ac"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/botkube/releases/download/v1.4.0/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "ec12aea48a5bee0353a106952cf36f9852d9238bf99153428fbb39aac61ae29b"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.4.0/botkube-linux-amd64", using: CurlDownloadStrategy
      sha256 "ba965115750bcb6ebeb6126e888fc05617aa0238ccbb1dad014c62a80b560d51"

      def install
        bin.install "botkube-linux-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/botkube/releases/download/v1.4.0/botkube-linux-arm64", using: CurlDownloadStrategy
      sha256 "d06c3f34da8a8ad256efb6a9cf648ada81381b4c9c6f05b388c6a6fd0d1c4714"

      def install
        bin.install "botkube-linux-arm64" => "botkube"
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
