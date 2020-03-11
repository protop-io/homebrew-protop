class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.1-beta.1/Distribution.tar.gz"
  sha256 "38a2ecf937e27518433f26f17d7581bb82d7ae559f1743c00d93dd8f76d478ef"
  version "0.1.0"

  bottle :unneeded

  def install
    bin.install "protop"
  end
end
