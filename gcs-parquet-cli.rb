class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.4/parquet-cli-1.15.0.jar"
  sha256 "56f11efcc8025ce04f03bc8559e2e0a34a8ae9b8a9134c48cad603de0e83dd76"
  version "0.3.4"

  def install
    libexec.install "parquet-cli-1.15.0.jar"
    bin.write_jar_script libexec/"parquet-cli-1.15.0.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
