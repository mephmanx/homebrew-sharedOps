class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.9.tar.gz"
  sha256 "6e25b8d1c2ef11f542e85ad327dd0d83487780a815e5054bc97f17cd0936ea47"
  license "MIT"

  depends_on "vault"
  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "show-keys.sh"
    prefix.install "files"
  end

  test do
    system "#{bin}/show-keys.sh", "--help"
  end
end
