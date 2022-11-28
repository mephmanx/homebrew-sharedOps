class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.5.tar.gz"
  sha256 "a5e55645b28105bebe0d69d766dc15e304c83c92a5e6043c60954db63e468b3b"
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
