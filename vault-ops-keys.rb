class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.11.tar.gz"
  sha256 "51ccba2cce8a9b536009ce578367ec6a278b84cc6b23700ecfd79260b1f0aa8b"
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
