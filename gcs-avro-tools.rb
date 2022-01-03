class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.1/avro-tools-1.10.1.jar"
  sha256 "0ae549a18dc3e5559c38afebf50152e6dd54085cf59dc9e727bff0df13c50660"
  version "0.2.1"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  def install
    libexec.install "avro-tools-1.10.1.jar"
    bin.write_jar_script libexec/"avro-tools-1.10.1.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
