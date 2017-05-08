require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.129/helios-tools-0.9.129-shaded.jar"
  sha256 "ccf9553cb4b1809dda5a9fd6471568f6bce9db2fa1cdb704de9e42fa01947772"
  version "0.9.129"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.129-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.129-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
