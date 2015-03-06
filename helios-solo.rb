require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.213/helios-solo.zip"
  sha1 "18cb35754f31c3dbe3517cdff0bde07b9429f28b"
  version "0.8.213"

  depends_on "helios" => "0.8.213"

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
