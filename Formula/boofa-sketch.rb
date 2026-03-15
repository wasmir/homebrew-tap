class BoofaSketch < Formula
  desc "Continuity Sketch helper — draw on iPad, insert anywhere"
  homepage "https://github.com/wasmir/boofa-sketch"
  url "https://github.com/wasmir/boofa-sketch/releases/download/v1.0.0/BoofaSketch.tar.gz"
  sha256 "f3e8137fb695ee8f8eb3cd5f4e6e49e6627b005e7128015bdb69ec29d741aa5c"
  license "MIT"

  depends_on :macos

  def install
    prefix.install "BoofaSketch.app"
    bin.write_exec_script prefix/"BoofaSketch.app/Contents/MacOS/boofa-sketch"
  end
end
