class Ratatool < Formula
  desc "Tool for random data sampling and generation"
  homepage "https://github.com/spotify/ratatool"
  url "https://github.com/spotify/ratatool/releases/download/v0.1.8/ratatool-0.1.8.jar"
  sha256 "a74ad263bc7b232500d15bee7a0e6a54669b028d9bbd9f88db53550f3a1f40b3"

  bottle :unneeded

  def install
    libexec.install "ratatool-#{version}.jar"
    bin.write_jar_script libexec/"ratatool-#{version}.jar", "ratatool"
  end

  test do
    system "#{bin}/ratatool"
  end
end
