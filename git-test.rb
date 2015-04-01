class GitTest < Formula
  homepage "https://github.com/spotify/git-test"
  url "https://github.com/spotify/git-test/archive/v1.0.1.tar.gz"
  sha256 "1273d97644edf3690cc0310a1f6f33856f83bf736599c54150db7a7ad9e43983"

  def install
    bin.install "git-test"
    man1.install "git-test.1"
  end

  test do
    system "#{bin}/git-test --version"
  end
end
