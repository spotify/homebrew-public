class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.2/proto-tools-3.21.1.jar"
  sha256 "1e4ba0488de486cff4a7b0e6e5743091b395b65ae07e2541165cf832cd3f1640"
  version "0.2.2"

  def install
    libexec.install "proto-tools-3.21.1.jar"
    bin.write_jar_script libexec/"proto-tools-3.21.1.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
