class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "a8982734c77c0bf5274c9b8436217376ece3a9316e6c04c0cb80694c3d00031d"
  depends_on :xcode => ["12.0", :build]

  def install
    # Unzip the downloaded file to a temporary directory
    system "unzip", "#{cached_download}"

    # Navigate into the extracted directory
    cd "drax-1.0.0" do
      # Build the project
      system "swift", "build", "-c", "release", "--disable-sandbox"

      # Install the built binary to Homebrew's bin directory
      bin.install ".build/release/drax"
    end
  end

  test do
    # Basic test to ensure the tool runs without errors
    assert_match "Usage: drax <argument>", shell_output("#{bin}/drax help").strip
  end
end
