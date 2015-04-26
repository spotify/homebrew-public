require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.307/helios-solo.zip"
  sha1 "63634f2fcced490e0f2d3a485c27ce312e6e4ed4"
  version "0.8.307"

  depends_on "helios" => "0.8.307"
  depends_on "jq"

  def install
    bin.install 'helios-cleanup'
    bin.install 'helios-down'
    bin.install 'helios-env'
    bin.install 'helios-restart'
    bin.install 'helios-solo'
    bin.install 'helios-up'
    bin.install 'helios-use'
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
