class Protop < Formula
  desc "A package manager for protocol buffers."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.8.0/protop-0.8.0.tgz"
  sha256 "6291d096a488fb2de08319baad97b2e0b45119570863a740333aad0c256ab604"
  version "0.8.0"

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
