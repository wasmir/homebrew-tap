class BoofaSketch < Formula
  desc "Continuity Sketch helper — draw on iPad, insert anywhere"
  homepage "https://github.com/wasmir/boofa-sketch"
  url "https://github.com/wasmir/boofa-sketch/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "fe57d08767301ca283a4d67076dcc8a5084449a61e840e6afccaed6d508a5b2c"
  license "MIT"

  depends_on :macos
  depends_on :xcode => ["14.0", :build]

  def install
    system "swiftc",
      "-parse-as-library",
      "-target", "#{Hardware::CPU.arch}-apple-macosx12.0",
      "-O",
      "-o", "boofa-sketch",
      *Dir["Sources/*.swift"]

    # Create .app bundle (required for Continuity Sketch)
    app_bundle = "BoofaSketch.app/Contents"
    (buildpath/app_bundle/"MacOS").mkpath
    (buildpath/app_bundle/"Resources").mkpath
    cp "boofa-sketch", buildpath/app_bundle/"MacOS/boofa-sketch"
    cp "Info.plist", buildpath/app_bundle/"Info.plist"
    cp "Resources/app.icns", buildpath/app_bundle/"Resources/app.icns"

    prefix.install "BoofaSketch.app"
    bin.write_exec_script prefix/"BoofaSketch.app/Contents/MacOS/boofa-sketch"
  end
end
