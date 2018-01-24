class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.6/parquet-tools-1.9.0.jar"
  sha256 "fd32e920af4a2ce0ce87a2c50a154480f22f2508a42a8c74e8021222b80a7a4d"
  version "0.1.6"

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
