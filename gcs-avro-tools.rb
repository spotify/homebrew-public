class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.2/avro-tools-1.12.0.jar"
  sha256 "e3c7ed0f2f11dcbefb044c1d3eb345ee1b32015a353b106a9e2195a2dbcbc2a6"
  version "0.3.2"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.12.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.12.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
