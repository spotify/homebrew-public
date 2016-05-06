require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.782/helios-solo.zip"
  sha256 "37b82b39bb45d03c3116ec2a61c6ccb914b66ae2249a3ea44a18be53eaa1d19a"
  version "0.8.782"

  depends_on "spotify/public/helios" => "0.8.782"
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
