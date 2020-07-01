class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.8/parquet-tools-1.11.0.jar"
  sha256 "c9b147b134d3a0d0be0abf38be22481a48a813fbba2c844b1e0f1e396aa25c0c"
  version "0.1.8"

  conflicts_with "parquet-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "parquet-tools-1.11.0.jar"
    bin.write_jar_script libexec/"parquet-tools-1.11.0.jar", "parquet-tools"
  end

  test do
    system "#{bin}/parquet-tools", "--help"
  end
end
