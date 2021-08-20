PT_VERSION = '0.0.71'
PT_GITREF = 'e6e1129632b8f2c9dfaf5d72ddd8ac230fee8588'
PT_SHA256 = 'c5bfbcb94dcda1596a85d293d3393687b4a9dd52e8f8ffcd4a2ae287fcbbe679'


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