require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.203/helios-tools-0.9.203-shaded.jar"
  sha256 "52542fde0c232a7355282edc34e87dfe3b93b79979721f38a5f0ededf386876f"
  version "0.9.203"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.203-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.203-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
