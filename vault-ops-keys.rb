class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.7.tar.gz"
  sha256 "7741f25642d3a92d8d34f74aa65df7ba070a3ed3fbc9dedd4819e3d33cf766e6"
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
