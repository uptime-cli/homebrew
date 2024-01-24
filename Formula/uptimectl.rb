# typed: false
# frozen_string_literal: true

class Uptimectl < Formula
    desc ""
    homepage "https://github.com/uptime-cli/uptimect"
    version "0.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.1.0/uptimectl_0.1.0_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "d1bec81f3c3deb729ba4a7abd116105ce9410777083fbc60d9456206095d3c34"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.1.0/uptimectl_0.1.0_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "deecbe5f01e909e42a8602ad1dcda58b789174cd3c086e035097d6036f393ccd"
  
        def install
          bin.install "uptimectl"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.1.0/uptimectl_0.1.0_linux_arm64.tar.gz", :using => CurlDownloadStrategy
        sha256 "3844efb0b1b1439a78e9d92244e2c46c838f5171f32fa032e7f71b0269c0afd3"
  
        def install
          bin.install "uptimectl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/uptime-cli/uptimectl/releases/download/v0.1.0/uptimectl_0.1.0_linux_amd64.tar.gz", :using => CurlDownloadStrategy
        sha256 "a8a1a10aa905b30d5dd8854abde129ca2deaf091d516ec4d1ae411d19cb90a3d"
  
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
  
