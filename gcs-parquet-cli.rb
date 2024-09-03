class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.2/parquet-cli-1.14.2.jar"
  sha256 "6b4cad005d587a46056a506256f2ffff6da0c44dd0baa4af873efd63ecebb1ab"
  version "0.3.2"

  def install
    libexec.install "parquet-cli-1.14.2.jar"
    bin.write_jar_script libexec/"parquet-cli-1.14.2.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
