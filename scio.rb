class Scio < Formula
  desc "Scala API for Google Cloud Dataflow and Apache Beam"
  homepage "https://github.com/spotify/scio/"
  url "https://github.com/spotify/scio/releases/download/v0.2.10/scio-repl-0.2.10.jar"
  sha256 "352f3412bc09190193e548f9183dae481d538314d74e3b0ed6362b1eb3b0f3fa"

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
