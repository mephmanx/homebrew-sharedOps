class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.0.tar.gz"
  sha256 "1dab3cd2e654ff8de07353976ae87112391a8d31bf7d30e6e7b2d749f0766db0"
  license "MIT"

  depends_on "vault"

  def install
    bin.install "show-keys.sh"
  end

  test do
    system "#{bin}/show-keys.sh", "--help"
  end
end
