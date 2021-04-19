PT_VERSION = '0.0.51'
PT_GITREF = 'c0d849d598883c9cd4bdd2769cf828f4d0fc6a4a'
PT_SHA256 = 'c80a86a9a6826b633d3de5c021a9ec91d2a0ed6b758b2fcfe390b2c4ad50c93e'


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