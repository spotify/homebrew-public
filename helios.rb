require "formula"

class Helios < Formula
  homepage "https://github.com/spotify/helios"
  url "https://oss.sonatype.org/service/local/repositories/releases/content/com/spotify/helios-tools/0.9.254/helios-tools-0.9.254-shaded.jar"
  sha256 "bbab43a6acb546e2b51a469c65c83a28db54a9d550a9acfddbe0be3360060399"
  version "0.9.254"

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
