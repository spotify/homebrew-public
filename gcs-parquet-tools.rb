class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.12/parquet-tools-1.11.1.jar"
  sha256 "03b13c1eb1e69ced013ea3121e66455204c0b4fe90de8fde6a1aaee2713dd429"
  version "0.1.12"

  conflicts_with "parquet-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  deprecate! date: "2021-03-08", because: "is deprecated upstream, use parquet-cli instead"

  def install
    libexec.install "parquet-tools-1.11.1.jar"
    bin.write_jar_script libexec/"parquet-tools-1.11.1.jar", "parquet-tools"
  end

  test do
    system "#{bin}/parquet-tools", "--help"
  end
end
