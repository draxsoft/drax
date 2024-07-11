class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "710737cfb9cbf47c378a6966133438ba45379bee1f2d005d38cdeede11322933"

  depends_on :xcode => ["12.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/drax"
  end

  test do
    system "#{bin}/drax", "help"
  end
end
