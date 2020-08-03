class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.10/avro-tools-1.8.2.jar"
  sha256 "2a510309c9ebc0837ede447ff49c4ab78e0d2c6cc354d1865799ce82579fbe0a"
  version "0.1.10"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "avro-tools-1.8.2.jar"
    bin.write_jar_script libexec/"avro-tools-1.8.2.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
