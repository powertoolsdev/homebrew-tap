PT_VERSION = '0.0.52'
PT_GITREF = '7653d80993ba49fd49b27e8f4d792d2ab9e36be7'
PT_SHA256 = '9ba605a147f82b89d3b88c8f9844f0a5f6d1197d9cb2aa8cfdaf3717aa82b01f'


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