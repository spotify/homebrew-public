require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.778/helios-tools-0.8.778-shaded.jar"
  sha256 "d70a6c1834f44cebd9d03c78d9e8efd7805c512f12a4a3702d9a674b5d146d5f"
  version "0.8.778"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.778-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.778-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
