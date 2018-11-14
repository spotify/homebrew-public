require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.231/helios-tools-0.9.231-shaded.jar"
  sha256 "c65c2af3331c999fb2e5164ecc75d6ab9530eed841f5cdf86100d19040784627"
  version "0.9.231"

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
