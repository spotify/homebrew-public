class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.7/avro-tools-1.8.2.jar"
  sha256 "d251d591b5cdd8883cc2e5dfc1ede582a2baf127e7e2634d6a0464edca1a2f4d"
  version "0.1.7"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "avro-tools-1.8.2.jar"
    bin.write_jar_script libexec/"avro-tools-1.8.2.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
