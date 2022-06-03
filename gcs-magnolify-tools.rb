class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.2/magnolify-tools-0.4.8.jar"
  sha256 "788e0f20eaf06c3dbda98f4eb1aa84ac24cee61c1d05e4b9c4cf4e25f2cf90c5"
  version "0.2.2"

  def install
    libexec.install "magnolify-tools-0.4.8.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.4.8.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
