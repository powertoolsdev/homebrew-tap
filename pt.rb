PT_VERSION = '0.0.59'
PT_GITREF = '98a9973f36823f50cd42f25fc2e304c2d6fe9356'
PT_SHA256 = 'c6291b32db6508d4f9fa4402422165eeb5e17a0adf52cef05c672ec2d97cadb2'


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