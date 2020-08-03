class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.10/parquet-tools-1.11.0.jar"
  sha256 "3b129e6c888530c30c9ca5d86d31129b4c8a4385310553d74a3e91cf286b695b"
  version "0.1.10"

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
