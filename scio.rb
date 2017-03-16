class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.2.13/scio-repl-0.2.13.jar"
  sha256 "c16fe035c0b4183491af75c3eb6406460d0529b32cd8bb00c16a5aaffffde3f6"

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

      exec java ${java_opts[*]} -jar #{libexec}/"scio-repl-#{version}.jar" ${scio_opts[*]}
    EOS
  end

  test do
    shell_output("#{bin}/scio-repl -X", 1)
  end
end
