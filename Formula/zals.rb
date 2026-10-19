# Source template for the zals Homebrew formula.
#
# The release workflow renders this file (substituting the __PLACEHOLDER__
# tokens with the released version and the SHA-256 of each archive) and pushes
# the result to the tap repository (default: kksat/homebrew-tap). Edit this
# template, not the rendered copy in the tap.
class Zals < Formula
  desc "Zig Ansible Language Server"
  homepage "https://github.com/kksat/zals"
  version "0.2.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/kksat/zals/releases/download/v0.2.0/zals-0.2.0-aarch64-macos.tar.gz"
      sha256 "9e1dd143777f0406db9366856433ecbe989a833b1ce0f435c38d372fd9161cd6"
    end
    on_intel do
      url "https://github.com/kksat/zals/releases/download/v0.2.0/zals-0.2.0-x86_64-macos.tar.gz"
      sha256 "0be2f83a03b452637a06b5d505263cd6cf56c689ca9f0f0c10cb3ea00fd12b59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kksat/zals/releases/download/v0.2.0/zals-0.2.0-aarch64-linux.tar.gz"
      sha256 "e79838ed9d50dcf18370aa040c36a4b3bc94422565ce28802e927d4d938f3b4e"
    end
    on_intel do
      url "https://github.com/kksat/zals/releases/download/v0.2.0/zals-0.2.0-x86_64-linux.tar.gz"
      sha256 "bac2b26191b9d148226005e7d40c722e23d32a041ce86c23452efcc055aa443e"
    end
  end

  def install
    bin.install "zals"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zals --version 2>&1")
  end
end