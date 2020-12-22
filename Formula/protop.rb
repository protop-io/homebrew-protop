class Protop < Formula
  desc "A package manager for protocol buffers."
  homepage "https://github.com/protop-io/protop"
  url "https://github.com/protop-io/protop/releases/download/v0.9.0/protop-0.9.0.tgz"
  sha256 "b1cc60997c0a340b8dff75128616b1b732cec4e9761df67cfe7c640a41bf0b82"
  version "0.9.0"

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
