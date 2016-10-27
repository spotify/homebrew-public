class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.3/proto-tools-3.1.0.jar"
  sha256 "5ab1c1126a260e8354bee4ed95c6d7e34897f8591ad2c65e2ad6730b1d1c412a"
  version "0.1.3"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "proto-tools-3.1.0.jar"
    bin.write_jar_script libexec/"proto-tools-3.1.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
