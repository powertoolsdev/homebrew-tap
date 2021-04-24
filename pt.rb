PT_VERSION = '0.0.53'
PT_GITREF = 'e7b8f4d9a3fb193d4c7a1de1955ef652f245934b'
PT_SHA256 = '1b4209ddf6eb41119611503ee661aefc78eedf20e6edbf59eecd3ccd5dd6c672'


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