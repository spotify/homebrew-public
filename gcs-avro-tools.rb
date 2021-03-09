class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.0/avro-tools-1.10.1.jar"
  sha256 "2e5cdb749b1e5bd13809aa3e592c030c1395fdc993fee2f48e585e86890ac78a"
  version "0.2.0"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install "avro-tools-1.10.1.jar"
    bin.write_jar_script libexec/"avro-tools-1.10.1.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
