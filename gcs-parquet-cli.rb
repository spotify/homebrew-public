class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.2/parquet-cli-1.12.3.jar"
  sha256 "00f092584a01c9640528633fa994dbd56e92ac54043dfff7aac2e823cf45c655"
  version "0.2.2"

  def install
    libexec.install "parquet-cli-1.12.3.jar"
    bin.write_jar_script libexec/"parquet-cli-1.12.3.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
