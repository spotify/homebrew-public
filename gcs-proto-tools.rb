class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.5/proto-tools-4.35.0.jar"
  sha256 "b24715c24d8a56e155114254e55f0a8ba7b89fca70ce770e6dbbfb5ba32d9d61"
  version "0.3.5"

  def install
    libexec.install "proto-tools-4.35.0.jar"
    bin.write_jar_script libexec/"proto-tools-4.35.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
