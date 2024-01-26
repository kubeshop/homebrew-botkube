# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.8.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.8.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "6aa5e1261417089fd52863d97aced7b529aa5906b5ece4b55a7727bbc5b6d9ed"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/botkube/releases/download/v1.8.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "91c207b396ef0154f77257e4b79f3939c107adf50f6875701f1632c6f81e26cd"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/botkube/releases/download/v1.8.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
      sha256 "f95e151a58f1151bd6336df7650242111377f3b9688be5c17e322a4a05f3f99f"

      def install
        bin.install "botkube-linux-arm64" => "botkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.8.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
      sha256 "43238e5d462f4cbc6baecc02798bc9dd653cc1df22bd88cd46ca4b0cd6ffe62c"

      def install
        bin.install "botkube-linux-amd64" => "botkube"
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
