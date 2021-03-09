class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.2.0/parquet-cli-1.11.1.jar"
  sha256 "05ae33c42d704027b77300d2f36d2664a6e5fac110ac64c61b7de90be79f529b"
  version "0.2.0"

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
