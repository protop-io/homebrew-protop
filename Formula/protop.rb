class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.2.0/protop-cli-0.2.0.tar.gz"
  sha256 "fbf3ab8bb8cb991f52bfd1be166f86c04cb3d0fae9380176ae03f3c1c2609ebc"
  version "0.2.0"

  bottle :unneeded

  def install
    rm_f Dir["*.bat"]
    chmod 0755, "protop-cli"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/protop-cli"
  end

  def caveats; <<~EOS
    You should set the environment variable PROTOP_HOME to
      #{libexec}
    EOS
  end

  test do
    system "#{bin}/protop", "--version"
  end
end
