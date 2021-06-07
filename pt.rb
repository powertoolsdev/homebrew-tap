PT_VERSION = '0.0.62'
PT_GITREF = '0167562d64163099a4dee4d033b7f5037004f46a'
PT_SHA256 = 'bec100473427ba39a47218e00234f03d57d0e1ae051c99ce2eca1312cfeedf77'


class Pt < Formula
  desc "Build, deploy and operate serverless,static and container apps with a single command."
  homepage "https://www.powertools.dev"
  bottle :unneeded
  version "#{PT_VERSION}"

  if OS.mac?
    url "https://download.powertools.dev/download/46ED852D-EC8F-4877-80E8-0248B7383912?version=#{PT_GITREF}"
    sha256 "#{PT_SHA256}"
  end

  def install
    bin.install "pt"
  end
end