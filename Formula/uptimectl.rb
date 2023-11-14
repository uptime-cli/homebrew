# typed: false
# frozen_string_literal: true

class Uptimectl < Formula
    desc ""
    homepage "https://github.com/uptime-cli/uptimect"
    version "0.0.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.1/uptimectl_0.0.1_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "846e2f4e82aa7a286d8832e023a8a9f4111353e8923264d26a3c71739dc0e64b"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.1/uptimectl_0.0.1_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "4912415d482f1d0a5f55cbf8999720886822092fcb63f66a3a7038e58164590c"
  
        def install
          bin.install "uptimectl"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.1/uptimectl_0.0.1_linux_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "7105c244b648cc476e0ed8ba86d0df508281bbaa156b0bd7de2460ac3e8d1ab0"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.0.1/uptimectl_0.0.1_linux_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "82da555c497ff006cb0464cffcbc3c0fe9baa4b6029b35079b9ac0c3f671f24f"
  
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
  