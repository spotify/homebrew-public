require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.127/helios-tools-0.9.127-shaded.jar"
  sha256 "df5b52207b93f1c3a127f82ef29289a70a9b54d6087cd3f25b991109b1346ecd"
  version "0.9.127"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.127-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.127-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
