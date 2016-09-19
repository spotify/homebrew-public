class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.1/avro-tools-1.8.1.jar"
  sha256 "382f2bfd756b190e4bad5038807705ae66dda132e17a0ac88a0069f246e720d0"
  version "0.1.1"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "avro-tools-1.8.1.jar"
    bin.write_jar_script libexec/"avro-tools-1.8.1.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
