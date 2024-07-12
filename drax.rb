class Drax < Formula
  desc "Swift command-line tool for [description of drax]"
  homepage "https://github.com/draxsoft/drax"
  url "https://github.com/draxsoft/drax/releases/download/v1.0.0/v1.0.0.zip"
  sha256 "10d33b9133532905d54efad6e4bf3416253b5144885ead5061433d94f06fa04f"
  version "1.0.0"

  depends_on :xcode => ["12.0", :build]

  def install
    # Unzip the downloaded archive
    system "unzip", "#{cached_download}", "-d", "#{buildpath}"

    # Find the directory that got unzipped
    unzipped_dir = Dir["#{buildpath}/*"].first
    cd unzipped_dir do
      # Build the project
      system "swift", "build", "--disable-sandbox", "-c", "release"

      # Install the built executable
      bin.install ".build/release/drax"
    end
  end

  def post_install
    # Run `drax help` after installation
    system "#{bin}/drax", "help"
  end
end
