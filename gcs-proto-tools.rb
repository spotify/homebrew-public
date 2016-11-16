class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.4/proto-tools-3.1.0.jar"
  sha256 "bffbfb52d22b10ad84ceda81e54a8bba4a5a1427c169e6d32192f6603a065ccc"
  version "0.1.4"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "proto-tools-3.1.0.jar"
    bin.write_jar_script libexec/"proto-tools-3.1.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
