class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.2/parquet-tools-1.8.1.jar"
  sha256 "8c24a4bfcfc37730d376e67e3fae964183237a6bc47ebaf89a3507280c8ddf09"
  version "0.1.2"

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
