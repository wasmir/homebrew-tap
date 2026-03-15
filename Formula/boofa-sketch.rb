class BoofaSketch < Formula
  desc "Continuity Sketch helper — draw on iPad, insert anywhere"
  homepage "https://github.com/wasmir/boofa-sketch"
  url "https://github.com/wasmir/boofa-sketch/releases/download/v1.0.0/BoofaSketch.zip"
  sha256 "bd21b34c3ebcd1d049e9471a699796d245dea9906f39d1d4e0366a7431197b79"
  license "MIT"

  depends_on :macos

  def install
    prefix.install "BoofaSketch.app"
    bin.write_exec_script prefix/"BoofaSketch.app/Contents/MacOS/boofa-sketch"
  end
end
