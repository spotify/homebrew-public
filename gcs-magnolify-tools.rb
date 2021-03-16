class GcsMagnolifyTools < Formula
  desc "GCS compatible Magnolify Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.1/magnolify-tools-0.4.3.jar"
  sha256 "1303da523b684e91437d3392a36fa67901f65fc56d2552ee821f6acccc06091c"
  version "0.2.1"

  bottle :unneeded

  def install
    libexec.install "magnolify-tools-0.4.3.jar"
    bin.write_jar_script libexec/"magnolify-tools-0.4.3.jar", "magnolify-tools"
  end

  test do
    system "#{bin}/magnolify-tools", "avro"
  end
end
