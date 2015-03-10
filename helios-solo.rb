require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.245/helios-solo.zip"
  sha1 "d95c0216b5ba11dff9d4c3a92e71d891ff345f9d"
  version "0.8.245"

  depends_on "helios" => "0.8.245"

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
