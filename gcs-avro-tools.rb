class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.3/avro-tools-1.8.1.jar"
  sha256 "72062e827ac941e9392405ac0a17daeaafca171ce9568b764dcb6015c4258bb4"
  version "0.1.3"

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
