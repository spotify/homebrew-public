class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.5/parquet-cli-1.17.1.jar"
  sha256 "d3bc46902048796a7615d5a90c0bdab571664b54e12c6127958b94529e9951d8"
  version "0.3.5"

  def install
    libexec.install "parquet-cli-1.17.1.jar"
    bin.write_jar_script libexec/"parquet-cli-1.17.1.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
