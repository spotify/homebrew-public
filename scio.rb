class Scio < Formula
  desc "Scala API for Apache Beam and Google Cloud Dataflow"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.4.6/scio-repl-0.4.6.jar"
  sha256 "794852c66660aff4449808dc0bdeb9fc28991dc22829bc0806411af4311cd552"

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
