# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.14.0-rc.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/botkube/releases/download/v1.14.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "55ca1a647381e302b277bde6e52673e5b47e408324b0a062478c475e6154051f"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/botkube/releases/download/v1.14.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "4c085cf23b462003e0553d1b398f632e97f900e3e954dd97148449fcd4787080"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/botkube/releases/download/v1.14.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
        sha256 "17d0f9df30bc6e955af31a7599f4e89a8561699646fd0dead0830145d6444526"

        def install
          bin.install "botkube-linux-amd64" => "botkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/botkube/releases/download/v1.14.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
        sha256 "d79e6e3690791ee092199e6a63df8eb301944d6b472ad31175f6c5c8876fe853"

        def install
          bin.install "botkube-linux-arm64" => "botkube"
        end
      end
    end
  end

  test do
    system "#{bin}/botkube version -o=short"
  end
end
