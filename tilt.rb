# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  version "0.12.11"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/windmilleng/tilt/releases/download/v0.12.11/tilt.0.12.11.mac.x86_64.tar.gz"
    sha256 "c12eea8658188cfdb8f434d59030d736efb72b1c5e7f0b5c58b8f8ac60f783e4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/windmilleng/tilt/releases/download/v0.12.11/tilt.0.12.11.linux.x86_64.tar.gz"
      sha256 "78360ac511676b73a9ea95f153323aa7ada0b272849699e15cb7f351db679ec5"
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end
