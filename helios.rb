require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.57/helios-tools-0.9.57-shaded.jar"
  sha256 "71a42366e859ff7bd3777b4eddf8d1393526a8b14cfb5ce2c453ac44c838f042"
  version "0.9.57"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.57-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.57-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
