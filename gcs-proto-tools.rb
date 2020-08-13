class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.12/proto-tools-3.12.4.jar"
  sha256 "1222d565aa6d4b5d3f60dc0016db69a80e964687f5d43b30b909d403344d2a16"
  version "0.1.12"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "proto-tools-3.12.4.jar"
    bin.write_jar_script libexec/"proto-tools-3.12.4.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
