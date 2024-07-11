class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/archive/refs/tags/v1.0.0.zip"
  sha256 "a8982734c77c0bf5274c9b8436217376ece3a9316e6c04c0cb80694c3d00031d"
  depends_on :xcode => ["12.0", :build]

  def install
    # Unzip the downloaded file to a temporary directory
    tmpdir = Dir.mktmpdir
    begin
      system "unzip", "#{cached_download}", "-d", "#{tmpdir}"

      # Find the extracted directory
      extracted_dir = Dir.glob("#{tmpdir}/drax-*").first
      raise "Unable to find extracted directory" unless extracted_dir && File.directory?(extracted_dir)

      # Check if Package.swift exists in the correct directory
      unless File.exist?("#{extracted_dir}/Package.swift")
        raise "Package.swift not found in extracted directory. Aborting."
      end

      # Build the project
      cd extracted_dir do
        system "swift", "build", "-c", "release", "--disable-sandbox"

        # Install the built binary
        bin.install ".build/release/drax"
      end
    ensure
      # Clean up temporary directory after installation
      rm_rf tmpdir
    end
  end

  test do
    # Basic test to ensure the tool runs without errors
    assert_match "Usage: drax <argument>", shell_output("#{bin}/drax help").strip
  end
end
