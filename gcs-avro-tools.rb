class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.2/avro-tools-1.11.0.jar"
  sha256 "328868db45452c20fda91dd880cd8591588841ae655065dad223cf02d06decf9"
  version "0.2.2"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.11.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.11.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
