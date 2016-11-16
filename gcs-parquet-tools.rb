class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.4/parquet-tools-1.8.1.jar"
  sha256 "b62c2a651b40213a6f090d3930f4b52ff398548ec1a9d57efabfe5b6d913c24d"
  version "0.1.4"

  conflicts_with "parquet-tools", :because => "provides the same binaries/links."

  bottle :unneeded

  depends_on :java => "1.7+"

  def install
    libexec.install "parquet-tools-1.8.1.jar"
    bin.write_jar_script libexec/"parquet-tools-1.8.1.jar", "parquet-tools"
  end

  test do
    system "#{bin}/parquet-tools", "--help"
  end
end
