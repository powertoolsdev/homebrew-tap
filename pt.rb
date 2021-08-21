PT_VERSION = '0.0.74'
PT_GITREF = '92686d78a90e43d4ef12d57c03884c5c1f21b511'
PT_SHA256 = 'ac9122abcaec8430c896a42c6eacfb99049b933e36c76bc51e991b7c75c2c6bd'
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