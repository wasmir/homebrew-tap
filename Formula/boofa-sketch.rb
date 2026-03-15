class BoofaSketch < Formula
  desc "Continuity Sketch helper — draw on iPad, insert anywhere"
  homepage "https://github.com/wasmir/boofa-sketch"
  url "https://github.com/wasmir/boofa-sketch/releases/download/v1.0.0/BoofaSketch.zip"
  sha256 "2b46c3287527c6f3cb7bf318d2fbaae7509a7659cb9deb56b4a7e3aac5e6d83c"
  license "MIT"

  depends_on :macos

  def install
    prefix.install "BoofaSketch.app"
    bin.write_exec_script prefix/"BoofaSketch.app/Contents/MacOS/boofa-sketch"
  end
end
