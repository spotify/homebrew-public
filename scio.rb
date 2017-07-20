class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.3.4/scio-repl-0.3.4.jar"
  sha256 "38508adee3155405172fa4bfa1d88e483f2c8ae94e113651b9f3456db7995f08"

  bottle :unneeded

  def install
    libexec.install "scio-repl-#{version}.jar"
    (bin+"scio-repl").write <<-EOS.undent
      #!/bin/bash
      java_opts=()
      scio_opts=()
      for o in "$@"; do
          if [[ "$o" =~ ^-D.* ]]; then
              java_opts+=("$o")
          else
              scio_opts+=("$o")
          fi
      done

      CLASSPATH=#{libexec}/"scio-repl-#{version}.jar":$CLASSPATH exec java ${java_opts[*]} ${scio_opts[*]} com.spotify.scio.repl.ScioShell
    EOS
  end

  test do
    shell_output("#{bin}/scio-repl -X", 1)
  end
end
