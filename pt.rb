PT_VERSION = '0.0.64'
PT_GITREF = 'f74192ced66f15082c495f9662f2ade59723760c'
PT_SHA256 = '3b755e0734a831baa42b4321f828176e136ffe6be14c1ce6effd75062dc9b54d'


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