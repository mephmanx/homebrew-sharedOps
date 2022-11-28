class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.4.tar.gz"
  sha256 "a1f527465c1e2daea06393b8cc5820ffc9dd5c41baa1ae0152be710ff0007bdf"
  license "MIT"

  depends_on "vault"

  def install
    bin.install "show-keys.sh"
    prefix.install "files"
  end

  test do
    system "#{bin}/show-keys.sh", "--help"
  end
end
