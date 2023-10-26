class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.0/proto-tools-3.24.4.jar"
  sha256 "2ebe07ffbd2ec296a15481377556f17a5acae2ef8f189b8e9c7950d266897e63"
  version "0.3.0"

  def install
    libexec.install "proto-tools-3.24.4.jar"
    bin.write_jar_script libexec/"proto-tools-3.24.4.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
