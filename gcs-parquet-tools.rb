class GcsParquetTools < Formula
  desc "GCS compatible Apache Parquet Tools"
  homepage "https://github.com/spotify/gcs-tools"
  url "https://github.com/spotify/gcs-tools/releases/download/v0.1.3/parquet-tools-1.8.1.jar"
  sha256 "67ec332bec9aec84a334e4729a2a7ce497ead19e459188c0f44ab2ca62529df9"
  version "0.1.3"

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
