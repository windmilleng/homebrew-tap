# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.17.3"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tilt-dev/tilt/releases/download/v0.17.3/tilt.0.17.3.mac.x86_64.tar.gz"
    sha256 "2a1e8118a5e70319f55a1e2fd26b42b52c1010c1e57dda8bc2572e2963d3b934"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tilt-dev/tilt/releases/download/v0.17.3/tilt.0.17.3.linux.x86_64.tar.gz"
      sha256 "b0ee99903c12b87b2e3c635f4501f60d58dd3e9fa4d0ff1b11ae8b3213d97ecd"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.3/tilt.0.17.3.linux.arm64_ALPHA.tar.gz"
        sha256 "dcfa4b19c2189024ff59682eb041ccb25768b8508bb5fa85884ac32f101470ab"
      else
        url "http://github.com/tilt-dev/tilt/releases/download/v0.17.3/tilt.0.17.3.linux.arm_ALPHA.tar.gz"
        sha256 "a41fe4ecc3b2aa2c6469da6745eae31d4a9361fd8659ca260c4fbfc4e3e004c4"
      end
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end
