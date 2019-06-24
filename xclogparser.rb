class Xclogparser < Formula
  desc "Tool to parse the SLF serialization format used by Xcode and xcodebuild to store its Build and Test logs (xcactivitylog)."
  homepage "http://github.com/spotify/xclogparser"

  url "https://github.com/spotify/xclogparser.git", :revision => "7760731c3342ad6b19d6eb5f4ecf0c1fedbe292b", :tag => "0.1.2"
  
  depends_on :xcode => ["10.0", :build]

  def install
    system "rake", "install[#{prefix}]"
  end

  test do
    system "#{bin}/xclogparser help"
  end
end
