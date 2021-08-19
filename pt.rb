PT_VERSION = '0.0.69'
PT_GITREF = 'c487d0a76301e58f9dbaba169b36f19b358383dc'
PT_SHA256 = '543f9d546a1b96312c5681ca7436cbd603d541e450c3175fb00cf032e2867bf4'


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