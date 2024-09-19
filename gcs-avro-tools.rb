class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.3/avro-tools-1.12.0.jar"
  sha256 "e8645343fc108cd855c817f89afa58a595cf9365ae8dbdf85abff6d0a45b5b91"
  version "0.3.3"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.12.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.12.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
