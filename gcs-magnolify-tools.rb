class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.3/magnolify-tools-0.7.4.jar"
  sha256 "b9e5cd115f0ce0f305d34cde5b272165dcd7e5e85f602ae76b0b07af9682bdc3"
  version "0.3.3"

  def install
    libexec.install "magnolify-tools-0.7.4.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.7.4.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
