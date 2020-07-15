class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.9/avro-tools-1.8.2.jar"
  sha256 "2024113c5f89aef8c349f9542481df6873c1ff24b2645aa469b9b7c7eed6de2f"
  version "0.1.9"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "avro-tools-1.8.2.jar"
    bin.write_jar_script libexec/"avro-tools-1.8.2.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
