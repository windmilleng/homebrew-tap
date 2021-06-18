# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.20.8"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.8/tilt.0.20.8.mac.x86_64.tar.gz"
    sha256 "955380b58befb419bb96e4dc252646c8feb7528277b78acb949dc7cec2e5ce18"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.8/tilt.0.20.8.mac.arm64_ALPHA.tar.gz"
    sha256 "96c99d33c2feb54b80638577c2395312a6d00051f310e5548675e874b18ed964"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.8/tilt.0.20.8.linux.x86_64.tar.gz"
    sha256 "1d791966fd38c8ee4b06158fb6ef9d51db0dcc0b3049269267d2cf306983ea83"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.8/tilt.0.20.8.linux.arm_ALPHA.tar.gz"
    sha256 "15bdc4bbae765ddadfb64c8756ee767d98e2a811086a0ecfbfb0d6af1a88737a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.8/tilt.0.20.8.linux.arm64_ALPHA.tar.gz"
    sha256 "ad4cbf713362c0aed3084a67c3c8944b93cc8c6721278db3a383870ff39d45ca"
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end
