require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.267/helios-tools-0.8.267-shaded.jar"
  sha1 "88dba61d198b0ca19ad62255402a894459a844a2"
  version "0.8.267"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.267-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.267-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
