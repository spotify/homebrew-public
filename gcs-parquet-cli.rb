class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.1/parquet-cli-1.11.1.jar"
  sha256 "393a74b908f270a50920f3161b8a968ed3f1179fff1051efc892e46be212c8a8"
  version "0.2.1"

  bottle :unneeded

  depends_on "openjdk@11"

  def install
    libexec.install "parquet-cli-1.11.1.jar"
    bin.write_jar_script libexec/"parquet-cli-1.11.1.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
