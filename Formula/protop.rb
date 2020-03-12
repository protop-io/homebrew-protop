class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.2.0/protop-cli-0.2.0.tar.gz"
  sha256 "bb05ee6a0087a998c5319785737ebfeea3f6ad6b13d59efa7ff445044c3749fb"
  version "0.2.0"

  bottle :unneeded

  depends_on :java => "13+"

  def install
    # rm_f Dir["*.bat"]
    libexec.install Dir["*"]
    bin.write_jar_script libexec/"protop-cli.jar", "protop"
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
