class GcsParquetCli < Formula
  desc "GCS compatible Apache Parquet CLI"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.3.1/parquet-cli-1.13.1.jar"
  sha256 "210bf3e1a5bf964c2f511d0628fca739f9c402a542cd1fa9bb5226df57e02ef2"
  version "0.3.1"

  def install
    libexec.install "parquet-cli-1.13.1.jar"
    bin.write_jar_script libexec/"parquet-cli-1.13.1.jar", "parquet-cli"
  end

  test do
    system "#{bin}/parquet-cli", "--help"
  end
end
