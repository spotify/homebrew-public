class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.4/avro-tools-1.12.0.jar"
  sha256 "61f16128e27cf0def954c6f622e1d2241d38209c51c9be517517303fa9aa4d5d"
  version "0.3.4"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.12.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.12.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
