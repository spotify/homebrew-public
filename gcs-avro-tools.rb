class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.5/avro-tools-1.12.0.jar"
  sha256 "1daab9f22efce3bc5e774c86f1470b92613bcc87a8edb4c41f221a5ff73466b6"
  version "0.3.5"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.12.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.12.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
