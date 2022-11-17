class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.3/avro-tools-1.11.1.jar"
  sha256 "3d015ba2e91eabc672b6ee560afa4aded1a74bb1fbfb6ba0e504aa6bd76ca0d2"
  version "0.2.3"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.11.1.jar"
    bin.write_jar_script libexec/"avro-tools-1.11.1.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
