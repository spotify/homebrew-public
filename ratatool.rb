class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.3.0/ratatool-0.3.0.jar"
  sha256 "7933bc2977575cfb80b7f42cde9a303e4602e19465d1fe2ac9c66ca7e10bfe78"

  bottle :unneeded

  def install
    libexec.install "ratatool-#{version}.jar"
    bin.write_jar_script libexec/"ratatool-#{version}.jar", "ratatool"
  end

  test do
    system "#{bin}/ratatool"
  end
end
