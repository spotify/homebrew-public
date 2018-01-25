class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.7/proto-tools-3.4.0.jar"
  sha256 "0e843497f08288cff49a4ece923866ba32833e24dde11c0376e44fe4fbed0d95"
  version "0.1.7"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "proto-tools-3.4.0.jar"
    bin.write_jar_script libexec/"proto-tools-3.4.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
