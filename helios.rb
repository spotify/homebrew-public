require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.23/helios-tools-0.9.23-shaded.jar"
  sha256 "0052a030fe704f40c7dabb8b9a316fc3a96dc87016a645fbe6c3cc4337afb501"
  version "0.9.23"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.23-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.23-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
