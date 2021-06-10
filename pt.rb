PT_VERSION = '0.0.66'
PT_GITREF = 'b11100fd4d3e3d928d5934404f9289a03d450595'
PT_SHA256 = '2ec8dffba485e07c4a1096aa1e31f233e03c8bf157181fdb2b6f7462b3cb66d6'


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