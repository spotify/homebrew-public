class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.1/proto-tools-3.15.5.jar"
  sha256 "1eb98fa8899886d3cc706a260f7340c6ac670bdd3097a87dcd5f550995dd3d07"
  version "0.2.1"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install "proto-tools-3.15.5.jar"
    bin.write_jar_script libexec/"proto-tools-3.15.5.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
