require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.219/helios-tools-0.9.219-shaded.jar"
  sha256 "a8953576c1ce7e39db6e9c187cd115fef6c790fc24ea89d6772d225b2cc7b617"
  version "0.9.219"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.219-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.219-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
