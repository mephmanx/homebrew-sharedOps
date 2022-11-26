class VaultOpsKeys < Formula
  desc "Script to quickly view a pre-configured list of keys from an Enterprise Vault instance from the command-line"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.0.tar.gz"
  sha256 "1dab3cd2e654ff8de07353976ae87112391a8d31bf7d30e6e7b2d749f0766db0"
  license "MIT"

  depends_on "vault"

  def install
    bin.install "show-keys.sh"
    bin.install "files"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    system "#{bin}/show-keys.sh", "--help"
  end
end
