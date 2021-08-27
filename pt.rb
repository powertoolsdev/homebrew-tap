PT_VERSION = '0.0.83'
PT_GITREF = '46fb8aa3ec8146c656d22cd6bd0d8697028fb661'
PT_SHA256 = '67ac6a0a7dafc2c5745b50b4ed8ed5b32b3f5db19766a4f7581bbb1b7089e9b2'
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