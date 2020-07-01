class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.8/avro-tools-1.8.2.jar"
  sha256 "f37388a9268f26a8565aab23ec5ccf0bfd12047fa18d0c1a2f1ecd9815c8b1bb"
  version "0.1.8"

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
