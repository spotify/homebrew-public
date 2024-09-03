class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.2/proto-tools-4.28.0.jar"
  sha256 "3d38b41efc7ec87f4140bcff2973716d65691bc0d035f9e96cb00859100501e6"
  version "0.3.2"

  def install
    libexec.install "proto-tools-4.28.0.jar"
    bin.write_jar_script libexec/"proto-tools-4.28.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
