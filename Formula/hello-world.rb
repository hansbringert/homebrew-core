# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelloWorld < Formula
  desc "Hello World"
  homepage "https://hello"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hansbringert/hello-world/releases/download/v0.0.1/hello-world_macOS_64-bit.zip"
    sha256 "97ade334661f2a6a31268ba2f49678e9f50623dddee375077752bb95a0420f6a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hansbringert/hello-world/releases/download/v0.0.1/hello-world_Tux_64-bit.zip"
    sha256 "63c042d93c103a24d24b315687a2c88bee1d12a1085dfebf6eefcb6625517318"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hansbringert/hello-world/releases/download/v0.0.1/hello-world_Tux_arm64.zip"
    sha256 "38bb868a0e0e1383b38f5680c2a1aa019051b54084340d583928454410182e53"
  end

  def install
    bin.install "hello-world"
  end
end
