class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.6/proto-tools-3.4.0.jar"
  sha256 "6b116a1912d83daac6b5f16f2d001e6bb74185a6faaa2e8a646d812f553b8d5e"
  version "0.1.6"

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
