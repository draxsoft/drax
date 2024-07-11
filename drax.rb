class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "a8982734c77c0bf5274c9b8436217376ece3a9316e6c04c0cb80694c3d00031d"

  depends_on :xcode => ["12.0", :build]

  def install
    # Unzip the downloaded file to a temporary directory
    system "unzip", "#{cached_download}", "-d", "temp_extracted_dir"

    # Change directory to the extracted folder
    Dir.chdir("temp_extracted_dir/drax") do
      # Build the project
      system "swift", "build", "-c", "release", "--disable-sandbox"
      # Install the built binary
      bin.install ".build/release/drax"
    end

    # Clean up temporary directory
    system "rm", "-rf", "temp_extracted_dir"
  end

  test do
    system "#{bin}/drax", "help"
  end
end
