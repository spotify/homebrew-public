class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.850/helios-solo.zip"
  version "0.8.850"
  sha256 "8b6c9c360798cbe889371f3b28122b234717621696581c38ecf57e67f90eef54"

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

  def caveats; <<-EOS.undent
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
