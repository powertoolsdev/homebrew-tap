PT_VERSION = '0.0.81'
PT_GITREF = 'd13515bd633a48cbf271c7b04aab2923814caf2b'
PT_SHA256 = '49632511c765530520526d840a388f49ae34740d5582481c1a01fb66820452c7'
PT_INSTALL_TOKEN_FILEPATH = '/tmp/pt-install-token'

class Pt < Formula
  desc "Build, deploy and operate serverless,static and container apps with a single command."
  homepage "https://www.powertools.dev"
  bottle :unneeded
  version "#{PT_VERSION}"

  if OS.mac?
    dl_url = "https://download.powertools.dev/download/46ED852D-EC8F-4877-80E8-0248B7383912?version=#{PT_GITREF}"

    if File.file?(PT_INSTALL_TOKEN_FILEPATH)
      file = File.open(PT_INSTALL_TOKEN_FILEPATH)
      install_token = file.read.strip
      File.delete(PT_INSTALL_TOKEN_FILEPATH)
      dl_url += "&token=#{install_token}"
    end

    url dl_url
    sha256 "#{PT_SHA256}"
  end

  def install
    bin.install "pt"
  end
end