class GcsAvroTools < Formula
  desc "GCS compatible Apache Avro Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.5/avro-tools-1.8.2.jar"
  sha256 "dd843e3d36aa68557d2d45748b320a87d9fe8d738ec37e412a943ad3ba2b277d"
  version "0.1.5"

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
