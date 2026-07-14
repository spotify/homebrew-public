class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.5/magnolify-tools-0.8.0.jar"
  sha256 "56f070971726f5123585b02957b0f8428055389b57efa9222b63652600227871"
  version "0.3.5"

  def install
    libexec.install "magnolify-tools-0.8.0.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.8.0.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
