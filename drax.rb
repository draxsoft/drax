class Drax < Formula
  desc "A command-line tool for various game settings"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/releases/download/v1.0.0/v1.0.0.zip"
  sha256 "your_sha256_checksum_here"
  depends_on :xcode => ["12.0", :build]

  def install
    # Create a temporary directory
    tmpdir = Dir.mktmpdir
    begin
      # Unzip the downloaded file to the temporary directory
      system "unzip", "#{cached_download}", "-d", "#{tmpdir}"

      # Find the extracted directory
      extracted_dir = Dir.glob("#{tmpdir}/*").first
      raise "Unable to find extracted directory" unless extracted_dir && File.directory?(extracted_dir)

      # Copy all contents from the extracted directory to the current working directory
      cp_r "#{extracted_dir}/.", "."

      # Change directory to the extracted folder
      cd extracted_dir do
        # Check if Package.swift exists in the correct directory
        unless File.exist?("Package.swift")
          raise "Package.swift not found. Aborting."
        end

        # Build the project
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
