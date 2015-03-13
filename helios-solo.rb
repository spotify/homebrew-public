require "formula"

class HeliosSolo < Formula
  homepage "https://github.com/spotify/helios"
  url "https://github.com/spotify/helios/releases/download/0.8.257/helios-solo.zip"
  sha1 "e8aefc35111d61983fdfd0b7e1e1251685c2d331"
  version "0.8.257"

  depends_on "helios" => "0.8.257"
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

  test do
    system "#{bin}/helios-use"
  end
end
