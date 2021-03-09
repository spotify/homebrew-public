class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.0/proto-tools-3.15.1.jar"
  sha256 "e8f17d565bb981fbfc177912d74a2f6dfeff55d53b3fa1e8e75394b9b99e8572"
  version "0.2.0"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install "proto-tools-3.15.1.jar"
    bin.write_jar_script libexec/"proto-tools-3.15.1.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
