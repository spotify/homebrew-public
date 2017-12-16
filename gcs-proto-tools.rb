class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.5/proto-tools-3.4.0.jar"
  sha256 "d365ef1bdb855d36d10538733d5cacb4db8defafa9b78eda14b831a0e042ea44"
  version "0.1.5"

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "proto-tools-3.4.0.jar"
    bin.write_jar_script libexec/"proto-tools-3.4.0.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
