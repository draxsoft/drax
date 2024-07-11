class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "a8982734c77c0bf5274c9b8436217376ece3a9316e6c04c0cb80694c3d00031d"

  depends_on :xcode => ["12.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/drax"
  end

  test do
    system "#{bin}/drax", "help"
  end
end
