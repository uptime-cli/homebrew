# typed: false
# frozen_string_literal: true

class Uptimectl < Formula
    desc ""
    homepage "https://github.com/uptime-cli/uptimect"
    version "0.0.3"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.3/uptimectl_0.0.3_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "06a2adce22b76aa9cb09aa6de30cfb13f5c8392a1c8b0be2874a2b6a8047ce38"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.3/uptimectl_0.0.3_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "d1b2279ca9673562a79040fcae05e3ad22e1465fff655f577820c45c9bee7cd1"
  
        def install
          bin.install "uptimectl"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.3/uptimectl_0.0.3_linux_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "0ac18898bbec848731db767de192979d705ecd556e750f387c3605d7defb8c9f"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.3/uptimectl_0.0.3_linux_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "e9358d714c71ac2b656aadbdaa13ed03346bcf60a7ea63e2b0bfa25ae0d7900b"
  
        def install
          bin.install "uptimectl"
        end
      end
    end
  
    depends_on "zsh" => :optional
    depends_on "fnf" => :optional
  
    test do
      system "#{bin}/uptimectl version"
    end
  end
  