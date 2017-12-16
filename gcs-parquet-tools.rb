class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.5/parquet-tools-1.9.0.jar"
  sha256 "ae68d82709931aef2fa8e85729259e627bf372b3cded84bea687706d6359a076"
  version "0.1.5"

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
