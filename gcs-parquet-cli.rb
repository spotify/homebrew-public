class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.0/parquet-cli-1.13.1.jar"
  sha256 "0749508086993e4eb23de366ec2ff4e9f2d508f38ff11b30d3aa7e795742c18d"
  version "0.3.0"

  def install
    libexec.install "parquet-cli-1.13.1.jar"
    bin.write_jar_script libexec/"parquet-cli-1.13.1.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
