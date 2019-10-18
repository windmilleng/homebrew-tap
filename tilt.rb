# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.10.14/tilt.0.10.14.mac.x86_64.tar.gz"
  version "0.10.14"
  sha256 "169f565eec61cc142b6450d6d9b44d51d241cc9b3915b07eb282e4eb713d2e2b"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end
