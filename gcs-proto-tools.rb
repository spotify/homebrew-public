class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.4/proto-tools-3.22.3.jar"
  sha256 "ce9bec0f4c2658eef10f081e5d3f56eb25f54808cb777189ba2523f3068faf28"
  version "0.2.4"

  def install
    libexec.install "proto-tools-3.22.3.jar"
    bin.write_jar_script libexec/"proto-tools-3.22.3.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
