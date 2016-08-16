require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.8.824/helios-tools-0.8.824-shaded.jar"
  sha256 "3ee85dbd5958cf646ac45edfc97ac5ddcd773400b350034a8e3cbaad3db06438"
  version "0.8.824"

  depends_on :java => "1.7+"

  def install
    libexec.install "helios-tools-0.8.824-shaded.jar"
    bin.write_jar_script libexec/"helios-tools-0.8.824-shaded.jar", "helios", "-XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none"
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
