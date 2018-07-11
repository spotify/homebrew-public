class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.9.2/helios-solo.zip"
  version "0.9.2"
  sha256 "3f89e9bab522f271a007dbfe204d56609478205e5e2d3139da01557aa94e9dc5"

  depends_on "spotify/public/helios"
  depends_on "jq"

  def install
    bin.install "helios-cleanup"
    bin.install "helios-down"
    bin.install "helios-env"
    bin.install "helios-restart"
    bin.install "helios-solo"
    bin.install "helios-up"
    bin.install "helios-use"
  end

  def caveats; <<~EOS
    This formula installs the latest version of the helios-solo tools,
    but it doesn't upgrade the Helios image. If you have upgraded from
    an older version of helios-solo, switch to the latest image by
    running:

        helios-use latest

    You can run `helios-use` to switch to any available Helios version
    whenever you'd like, even without upgrading helios-solo.
    EOS
  end

  test do
    system "#{bin}/helios-use"
  end
end
