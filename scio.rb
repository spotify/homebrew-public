class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.3.1/scio-repl-0.3.1.jar"
  sha256 "976cb10dc533e447e0d302802a518f9df3ad1ab0451215a9d3943b479a7790ff"

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
