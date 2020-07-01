class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.8/proto-tools-3.12.2.jar"
  sha256 "188d7b1593d103fc63c9e27036c5170b90243d70e4316c2bba9239db5399d6e6"
  version "0.1.8"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "proto-tools-3.12.2.jar"
    bin.write_jar_script libexec/"proto-tools-3.12.2.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
