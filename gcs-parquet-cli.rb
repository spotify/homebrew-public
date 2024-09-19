class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.3/parquet-cli-1.13.1.jar"
  sha256 "e842ec958866eb7f60546b22af6c135fe2c5a24473287d32f6977f1e4992cdeb"
  version "0.3.3"

  def install
    libexec.install "parquet-cli-1.13.1.jar"
    bin.write_jar_script libexec/"parquet-cli-1.13.1.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
