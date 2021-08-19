PT_VERSION = '0.0.70'
PT_GITREF = '0bdbd9d4cac2f881021789c9b8f3669e278386c4'
PT_SHA256 = 'eaa42a89559318721b44b26631e22bd5ab22a1f787330ab277eccc83d5ca6e07'


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