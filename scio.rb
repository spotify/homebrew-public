class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.2.3/scio-repl-0.2.3.jar"
  sha256 "b2726fbbdc8f8e4e8094ff70a1921e7f5f861a305452315db3da2f9bceb391e8"

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
