class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.3/magnolify-tools-0.6.2.jar"
  sha256 "7786e24710578a952d158e011c7e59c0a5b9922fee4eede791e124fc2ce8f690"
  version "0.2.3"

  def install
    libexec.install "magnolify-tools-0.6.2.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.6.2.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
