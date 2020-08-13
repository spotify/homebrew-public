class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.11/parquet-tools-1.11.0.jar"
  sha256 "9ea7f530e1b97df0f95d4d509b1415a16ccf3a294e19a563b2edcfce3b5e36b3"

  conflicts_with "parquet-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install "parquet-tools-#{version}.jar"
    bin.write_jar_script libexec/"parquet-tools-#{version}.jar", "parquet-tools"
  end

  test do
    system "#{bin}/parquet-tools", "--help"
  end
end
