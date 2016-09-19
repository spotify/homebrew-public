class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.1/parquet-tools-1.8.1.jar"
  sha256 "dd5f78f3c04eaffcf1aabb2fb14ec009214987595487889e8dfbe89dd0bc6883"
  version "0.1.1"

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
