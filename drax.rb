class Drax < Formula
  desc "Swift command-line tool for [description of drax]"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/releases/download/v2.0.0/v2.0.0.zip"
  sha256 "10d33b9133532905d54efad6e4bf3416253b5144885ead5061433d94f06fa04f"
  version "1.0.0"

  depends_on :xcode => ["12.0", :build]

  def install
    # Ensure the cache directory exists
    mkdir_p "#{buildpath}/v1.0.0"

    # Unzip the downloaded archive to a specific directory
    system "unzip", "#{cached_download}", "-d", "#{buildpath}/v1.0.0"

    # Change directory to the unzipped directory
    cd "#{buildpath}/v1.0.0" do
      # Build the project
      system "swift", "build", "--disable-sandbox", "-c", "release"

      # Install the built executable
      bin.install ".build/release/drax"
    end
  end

  def post_install
    # Output a message to confirm installation
    ohai "drax installed successfully!"
    ohai "Run `drax help` to get started."
  end

  test do
    # Simple test to check if drax runs
    system "#{bin}/drax", "--version"
  end
end
