class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.12/avro-tools-1.10.0.jar"
  sha256 "d910f857f35938afeb17b01c43e929eb3798a203a88640d1db29458daf936b6e"
  version "0.1.12"

  conflicts_with "avro-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install "avro-tools-1.10.0.jar"
    bin.write_jar_script libexec/"avro-tools-1.10.0.jar", "avro-tools"
  end

  test do
    system "#{bin}/avro-tools", "cat"
  end
end
