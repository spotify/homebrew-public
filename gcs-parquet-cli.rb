class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.3/parquet-cli-1.12.3.jar"
  sha256 "0c110f432567f0e663c56402ebec70f723cd21924847ba906d765efb4ed2ae12"
  version "0.2.3"

  def install
    libexec.install "parquet-cli-1.12.3.jar"
    bin.write_jar_script libexec/"parquet-cli-1.12.3.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
