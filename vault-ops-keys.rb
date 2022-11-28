class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.11.tar.gz"
  sha256 "efca9060c48093595068038bb737bf87eb74148c1671a2572d680a93bf940809"
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
