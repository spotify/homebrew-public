class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.4/avro-tools-1.11.1.jar"
  sha256 "ce80e93a1e9b3affb2012fa22547492472665e09360fb63378085064822e7af1"
  version "0.2.4"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.11.1.jar"
    bin.write_jar_script libexec/"avro-tools-1.11.1.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
