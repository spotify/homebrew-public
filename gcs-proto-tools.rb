class GcsProtoTools < Formula
  desc "GCS compatible tools for Scio Protobuf in Avro file"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.11/proto-tools-3.12.4.jar"
  sha256 "23af2ba44b61300b5adeca3b6e0f0c983d8c20e36492b205c7dfd113563d5d41"
  version "0.1.11"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "proto-tools-#{version}.jar"
    bin.write_jar_script libexec/"proto-tools-#{version}.jar", "proto-tools"
  end

  test do
    system "#{bin}/proto-tools", "--help"
  end
end
