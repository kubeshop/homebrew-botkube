# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.11.0-rc.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.11.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "6dae113bf02a9f43786d278073c1a62dcab766f55ab2f32a78ff45f646c8a262"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/botkube/releases/download/v1.11.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "cd67cf65052e452a2d6027809bbd8ef740be86b55d7e185b8db0b8370beab5aa"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/botkube/releases/download/v1.11.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
      sha256 "f667fe8f792cd8b37f294e2fe67a956f22ba167bc48c533952c1ee86f6cfded5"

      def install
        bin.install "botkube-linux-amd64" => "botkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/botkube/releases/download/v1.11.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
      sha256 "a89a0a4f71f5a8456a9e264a2cce6736813efdd4388dc2bd0999c80a2b0c70f4"

      def install
        bin.install "botkube-linux-arm64" => "botkube"
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
