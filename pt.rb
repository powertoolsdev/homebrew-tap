PT_VERSION = '0.0.68'
PT_GITREF = '5e5a01cccd2ac4e5417f4f906cbe7119617251af'
PT_SHA256 = 'e8942b051f4f64f37cbcadfecaaccf70d71fdd4faecb46e7348ccfda04c225b7'


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