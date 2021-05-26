PT_VERSION = '0.0.61'
PT_GITREF = '3fed90ba7875c1f591d603a0fcbf77f11ad66efd'
PT_SHA256 = 'f014e0a1eb8750b244c1d46ac5aac91166a113c8f40d11f96407bc3a1d46c5b4'


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