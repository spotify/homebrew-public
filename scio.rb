class Scio < Formula
  desc "Scala API for Apache Beam and Google Cloud Dataflow"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.10.2/scio-repl-0.10.2.jar"
  sha256 "885b331706b7ccb1cd096b1200d59a806bc2144c305f8b1162ff7793d0c5c32e"

  bottle :unneeded

  def install
    libexec.install "scio-repl-#{version}.jar"
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

      CLASSPATH="#{libexec}/scio-repl-#{version}.jar"${CLASSPATH:+:${CLASSPATH}} exec java ${java_opts[*]} com.spotify.scio.repl.ScioShell ${scio_opts[*]}
    EOS
  end

  test do
    shell_output("#{bin}/scio-repl -Y", 1)
  end
end
