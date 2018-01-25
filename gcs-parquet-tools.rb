class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.7/parquet-tools-1.9.0.jar"
  sha256 "2519d6198f0fec7cb2748b3c3abb5b83a5c32d0b3c6167ba5f82913d8b5dd80c"
  version "0.1.7"

  conflicts_with "parquet-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "parquet-tools-1.9.0.jar"
    bin.write_jar_script libexec/"parquet-tools-1.9.0.jar", "parquet-tools"
  end

  test do
    system "#{bin}/parquet-tools", "--help"
  end
end
