require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.236/helios-solo.zip"
  sha1 "1a06f95b7061f5620311abb1d88552fac2a8b079"
  version "0.8.236"

  depends_on "helios" => "0.8.236"

  def install
    bin.install 'helios-cleanup'
    bin.install 'helios-down'
    bin.install 'helios-enter'
    bin.install 'helios-env'
    bin.install 'helios-restart'
    bin.install 'helios-solo'
    bin.install 'helios-up'
    bin.install 'helios-use'
  end

  test do
    system "#{bin}/helios-use"
  end
end
