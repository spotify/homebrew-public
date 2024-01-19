class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.1/magnolify-tools-0.7.0.jar"
  sha256 "77ed3f37f75094de7c5d23f44d5be0003d29a81c213cea5802db986736dfa8e9"
  version "0.3.1"

  def install
    libexec.install "magnolify-tools-0.7.0.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.7.0.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
