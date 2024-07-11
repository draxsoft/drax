class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "a8982734c77c0bf5274c9b8436217376ece3a9316e6c04c0cb80694c3d00031d"

  depends_on :xcode => ["12.0", :build]

  def install
    # Unzip the downloaded file to a temporary directory
    system "unzip", "#{cached_download}", "-d", "drax_temp_extracted"

    # Change directory to the extracted folder
    cd "drax_temp_extracted/drax-1.0.0" do
      # Check if Package.swift exists in the correct directory
      unless File.exist?("Package.swift")
        raise "Package.swift not found. Aborting."
      end

      # Build the project
      system "swift", "build", "-c", "release", "--disable-sandbox"

      # Install the built binary
      bin.install ".build/release/drax"
    end

    # Clean up temporary directory after installation
    rm_rf "drax_temp_extracted"
  end

  test do
    # Basic test to ensure the tool runs without errors
    output = shell_output("#{bin}/drax help")
    assert_match "Usage: drax <argument>", output
  end
end
