class BoofaSketch < Formula
  desc "Continuity Sketch helper — draw on iPad, insert anywhere"
  homepage "https://github.com/wasmir/boofa-sketch"
  url "https://github.com/wasmir/boofa-sketch/releases/download/v1.0.0/BoofaSketch.zip"
  sha256 "0640f072c94b9bc74e1b01626b72328672996ad3fb6f5e7c3ccf86ae86ec210c"
  license "MIT"

  depends_on :macos

  def install
    prefix.install "BoofaSketch.app"
    bin.write_exec_script prefix/"BoofaSketch.app/Contents/MacOS/boofa-sketch"
  end
end
