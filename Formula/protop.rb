class Protop < Formula
  desc "A command line tool for distributing protobufs."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.7.1/protop-0.7.1.tgz"
  sha256 "20f40b01dad8a3b985545b4c407dba123b32d50ecec2c0d52541b6aa7e758812"
  version "0.7.1"

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
