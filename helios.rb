require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.271/helios-tools-0.8.271-shaded.jar"
  sha1 "3e2d28565f045fa5cec05340332e5dbe489acd72"
  version "0.8.271"

  depends_on :java => "1.7"

  def install
    libexec.install "helios-tools-0.8.271-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.271-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
