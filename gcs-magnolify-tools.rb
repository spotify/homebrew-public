class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.4/magnolify-tools-0.6.2.jar"
  sha256 "7333c51fb8767613cbb484041a7da58058bf53b207a738d7a103b5387969ddff"
  version "0.2.4"

  def install
    libexec.install "magnolify-tools-0.6.2.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.6.2.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
