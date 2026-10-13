# Source template for the zals Homebrew formula.
#
# The release workflow renders this file (substituting the __PLACEHOLDER__
# tokens with the released version and the SHA-256 of each archive) and pushes
# the result to the tap repository (default: kksat/homebrew-tap). Edit this
# template, not the rendered copy in the tap.
class Zals < Formula
  desc "Zig Ansible Language Server"
  homepage "https://github.com/kksat/zals"
  version "0.1.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/kksat/zals/releases/download/v0.1.0/zals-0.1.0-aarch64-macos.tar.gz"
      sha256 "747e257aee43d508f4668f165a667f4120de2e4075e798fcb036fdae32f40e15"
    end
    on_intel do
      url "https://github.com/kksat/zals/releases/download/v0.1.0/zals-0.1.0-x86_64-macos.tar.gz"
      sha256 "453e3f2bbfe6cc326178871bb49c2d06229c7946e1705efccd908ec04a8ab418"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kksat/zals/releases/download/v0.1.0/zals-0.1.0-aarch64-linux.tar.gz"
      sha256 "4221d72c72f8f511014b7cc53f71c7914cf3ef96077cf5e62aeeccc7c05191fb"
    end
    on_intel do
      url "https://github.com/kksat/zals/releases/download/v0.1.0/zals-0.1.0-x86_64-linux.tar.gz"
      sha256 "864d6844b8dd3b359c56824b17127339ac387fe352e5fb4ba64e9eef41131ef6"
    end
  end

  def install
    bin.install "zals"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zals --version 2>&1")
  end
end