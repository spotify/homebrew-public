require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.253/helios-tools-0.9.253-shaded.jar"
  sha256 "5739991e7201581aa315fc919a5595f49a074d7fd86d4e6740163f5d08bb939a"
  version "0.9.253"

  depends_on :java => "1.7+"

  def install
    jarfile = "helios-tools-#{version}-shaded.jar"
    libexec.install jarfile
    (bin+"helios").write <<~EOS
      #!/usr/bin/env bash
      export SUPPRESS_GCLOUD_CREDS_WARNING=true
      exec java -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none -jar #{libexec}/#{jarfile} "$@"
    EOS
  end

  test do
    system "#{bin}/helios", "--version"
  end
end
