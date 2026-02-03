class Clickup < Formula
  desc "ClickUp CLI - manage tasks from the command line"
  homepage "https://github.com/triptechtravel/clickup-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_darwin_arm64.tar.gz"
    else
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_linux_arm64.tar.gz"
    else
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "clickup"
  end

  test do
    assert_match "clickup version", shell_output("#{bin}/clickup version")
  end
end
