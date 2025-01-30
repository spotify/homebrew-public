class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.4/proto-tools-4.29.3.jar"
  sha256 "e6d407100863adf7602d5ac08fb7cbc25d2555ff0d1884bad695baf52abc7f99"
  version "0.3.4"

  def install
    libexec.install "proto-tools-4.29.3.jar"
    bin.write_jar_script libexec/"proto-tools-4.29.3.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
