class Scio < Formula
  desc "Scala API for Apache Beam and Google Cloud Dataflow"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.11.0/scio-repl.jar"
  sha256 "294aca17ca30e6a764d0d5faecf60e6239871b3ee8b7dcb0b6022f96e048ee67"

  bottle :unneeded

  def install
    libexec.install "scio-repl.jar"
    (bin+"scio-repl").write <<~EOS
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

      CLASSPATH="#{libexec}/scio-repl.jar"${CLASSPATH:+:${CLASSPATH}} exec java ${java_opts[*]} com.spotify.scio.repl.ScioShell ${scio_opts[*]}
    EOS
  end

  test do
    shell_output("#{bin}/scio-repl -Y", 1)
  end
end
