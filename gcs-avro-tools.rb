class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.4/avro-tools-1.8.1.jar"
  sha256 "61d9b45382b1e531f15845d652d1e99d059c1a03c3e09ee1fbf03c8cb074fbb4"
  version "0.1.4"

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
