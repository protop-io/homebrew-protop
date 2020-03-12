class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.1-beta.1/Distribution.tar.gz"
  sha256 "38a2ecf937e27518433f26f17d7581bb82d7ae559f1743c00d93dd8f76d478ef"
  version "0.1.0"

  bottle :unneeded

  def install
    # rm_f Dir["*.bat"]
    # chmod 0755, "protop-cli"
    # libexec.install Dir["*"]
    # bin.install_symlink libexec/"bin/protop-cli"
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
