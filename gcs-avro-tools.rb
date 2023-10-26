class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.0/avro-tools-1.11.3.jar"
  sha256 "996255eee5c6f113c8e5aa298067c8e2b648d7d66d90581f5a74d67ddc9c9358"
  version "0.3.0"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.11.3.jar"
    bin.write_jar_script libexec/"avro-tools-1.11.3.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
