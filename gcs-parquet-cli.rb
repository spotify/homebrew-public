class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.4/parquet-cli-1.13.0.jar"
  sha256 "4e98e40db5eca870d172572e39b720233c6aaf71c9e3d9453a29691d412b9736"
  version "0.2.4"

  def install
    libexec.install "parquet-cli-1.13.0.jar"
    bin.write_jar_script libexec/"parquet-cli-1.13.0.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
