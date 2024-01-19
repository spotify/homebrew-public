class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.1/avro-tools-1.11.3.jar"
  sha256 "fabfd1683418fb1e1be300a2493b46a491710d2ba5ce4a333fe69a2acd6edfc5"
  version "0.3.1"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.11.3.jar"
    bin.write_jar_script libexec/"avro-tools-1.11.3.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
