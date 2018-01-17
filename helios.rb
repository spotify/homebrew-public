require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.194/helios-tools-0.9.194-shaded.jar"
  sha256 "39d43c50440e08661a01bfca99fc62d2b1d377f4c0c67080ed4825d20f34f646"
  version "0.9.194"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.9.194-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.9.194-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
