class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.9/parquet-tools-1.11.0.jar"
  sha256 "0c5d9a597fa4ab42d1d01e953d92ded7de3d46e473d74b5562721010520ab186"
  version "0.1.9"

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
