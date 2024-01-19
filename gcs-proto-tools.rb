class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.1/proto-tools-3.25.2.jar"
  sha256 "01ba3a3fa46bd884f60e4c6fd00c4eda288d5ce6e975906f332339315a3dc457"
  version "0.3.1"

  def install
    libexec.install "proto-tools-3.25.2.jar"
    bin.write_jar_script libexec/"proto-tools-3.25.2.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
