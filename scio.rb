class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.4.1/scio-repl-0.4.1.jar"
  sha256 "08ab8d9bf8fffae6229f4435d82fb1b6965641c7144577abd2f739ec4cd2967b"

  bottle :unneeded

  def install
    libexec.install "scio-repl-#{version}.jar"
    (bin+"scio-repl").write <<-EOS.undent
      #!/usr/bin/env bash
      java_opts=()
      scio_opts=()
      for o in "$@"; do
          if [[ "$o" =~ ^-D.* || "$o" =~ ^-X.* ]]; then
              java_opts+=("$o")
          else
              scio_opts+=("$o")
          fi
      done

      CLASSPATH="#{libexec}/scio-repl-#{version}.jar"${CLASSPATH:+:${CLASSPATH}} exec java ${java_opts[*]} com.spotify.scio.repl.ScioShell ${scio_opts[*]}
    EOS
  end

  test do
    shell_output("#{bin}/scio-repl -Y", 1)
  end
end
