class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/0.4.3/protop-0.4.3.tgz"
  sha256 "25e415d566b36f7d3557f52cf488870102d358c3990fc86738e890738f8c7bba"
  version "0.4.3"

  bottle :unneeded

  depends_on :java => "13+"

  def install
    # rm_f Dir["*.bat"]
    libexec.install Dir["*"]
    bin.write_jar_script libexec/"protop.jar", "protop"
    # bin.install_symlink libexec/"bin/protop-cli" => "protop"
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
