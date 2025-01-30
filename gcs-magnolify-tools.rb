class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.4/magnolify-tools-0.7.4.jar"
  sha256 "d808265be71d997fd11f4f4e6e5f1a73650d3967ac8bef94eac71a45779f77a3"
  version "0.3.4"

  def install
    libexec.install "magnolify-tools-0.7.4.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.7.4.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
