class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.3/proto-tools-4.28.1.jar"
  sha256 "854c34ab705a7a8a34678f0e27a3cd821226964f9a873d8804783d3630d2393c"
  version "0.3.3"

  def install
    libexec.install "proto-tools-4.28.1.jar"
    bin.write_jar_script libexec/"proto-tools-4.28.1.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
