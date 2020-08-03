class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.10/proto-tools-3.12.4.jar"
  sha256 "ac1aba9c2e8b194866c790ab8329855b506737d59299831b238af87274b6920d"
  version "0.1.10"

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
