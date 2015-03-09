require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.237/helios-solo.zip"
  sha1 "41285113b25676f96c25772fdb903bb3a16fbdb9"
  version "0.8.237"

  depends_on "helios" => "0.8.237"

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
