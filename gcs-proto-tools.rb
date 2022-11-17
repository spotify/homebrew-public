class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.3/proto-tools-3.21.9.jar"
  sha256 "531c50cdfd228b760b33c4dfae4c1d3f75a04f10de06251b8d7801277bd6c2fe"
  version "0.2.3"

  def install
    libexec.install "proto-tools-3.21.9.jar"
    bin.write_jar_script libexec/"proto-tools-3.21.9.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
