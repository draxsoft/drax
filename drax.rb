class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/homebrew-drax"
  url "https://github.com/draxsoft/homebrew-drax/archive/refs/tags/v1.0.0.zip"
  sha256 "the_correct_sha256_checksum_of_the_zip_file"

  depends_on :xcode => ["12.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/drax"
  end

  test do
    system "#{bin}/drax", "help"
  end
end
