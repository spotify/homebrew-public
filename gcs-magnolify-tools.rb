class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.2/magnolify-tools-0.7.4.jar"
  sha256 "2a142df88d39fa78ec6d1df642b68525f5f06445da85f5be0a06fc0b6e784c9f"
  version "0.3.2"

  def install
    libexec.install "magnolify-tools-0.7.4.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.7.4.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
