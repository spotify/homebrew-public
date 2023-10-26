class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.0/magnolify-tools-0.6.3.jar"
  sha256 "f75c1ff6b2142ac82c72b967cd53c16db6c4e1b1c6fc006fc940031c5877becb"
  version "0.3.0"

  def install
    libexec.install "magnolify-tools-0.6.3.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.6.3.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
