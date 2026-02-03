class Clickup < Formula
  desc "ClickUp CLI - manage tasks from the command line"
  homepage "https://github.com/triptechtravel/clickup-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_darwin_arm64.tar.gz"
      sha256 "472403c535e76883ccd4e9f2524e61d6039e414a749807cd1ba5a7659e4e2f5a"
    else
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_darwin_amd64.tar.gz"
      sha256 "1a10a8b3f00bab28d972aa417a51555a8f55cd9389521591145995c691f3b4e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_linux_arm64.tar.gz"
      sha256 "d6bbbefe838e54015dbb4c80e7a71a8a27c34d93d82e6c4db44e2a2cde5d9498"
    else
      url "https://github.com/triptechtravel/clickup-cli/releases/download/v0.1.0/clickup_linux_amd64.tar.gz"
      sha256 "ed05a2bf4f800e4cd82269b7079030318033509694602360e8d42b320d561649"
    end
  end

  def install
    bin.install "clickup"
  end

  test do
    assert_match "clickup version", shell_output("#{bin}/clickup version")
  end
end
