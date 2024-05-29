# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botkube < Formula
  desc "Botkube CLI is a command line tool for managing Botkube resources"
  homepage "https://botkube.io"
  version "1.12.0-rc.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/botkube/releases/download/v1.12.0-rc.1/botkube-darwin-amd64", using: CurlDownloadStrategy
      sha256 "911978b079a192cecc4ebf25b23cc3a2d4bfec25e8de8457dce7226f0e694138"

      def install
        bin.install "botkube-darwin-amd64" => "botkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/botkube/releases/download/v1.12.0-rc.1/botkube-darwin-arm64", using: CurlDownloadStrategy
      sha256 "8c263089c5b61d78a76c19e3cbf57c6970e5564e3161cdaab4c7d2f44db76935"

      def install
        bin.install "botkube-darwin-arm64" => "botkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/botkube/releases/download/v1.12.0-rc.1/botkube-linux-amd64", using: CurlDownloadStrategy
        sha256 "5ceac5b7ebcdb51eaaaca4389c13968d11ce86c52cf855df10bb30622b45f936"

        def install
          bin.install "botkube-linux-amd64" => "botkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/botkube/releases/download/v1.12.0-rc.1/botkube-linux-arm64", using: CurlDownloadStrategy
        sha256 "f8f40b9d46fed5bcf985e15b87cfbf09c2df1d8dae2b71acd9725475259d619b"

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
