class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.2/avro-tools-1.8.1.jar"
  sha256 "6f276290d101ab0829ae4e54a07259f0a13a0721b813ce62065bbe739dc3d9b5"
  version "0.1.2"

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
