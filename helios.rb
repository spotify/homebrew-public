require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.250/helios-tools-0.9.250-shaded.jar"
  sha256 "d71b3a8e19767563b09ac0e04fa362c78ed9932b2115c270c7f56c7895092810"
  version "0.9.250"

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
