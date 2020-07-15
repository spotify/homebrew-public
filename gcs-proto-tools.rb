class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.9/proto-tools-3.12.2.jar"
  sha256 "9e40d1c2902a168bd8b77976e54f8798fd2e275e479af97f181dfb93075b00e6"
  version "0.1.9"

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
