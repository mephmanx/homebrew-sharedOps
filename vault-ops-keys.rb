class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.3.tar.gz"
  sha256 "323661f93741a06e06c6e3ec80391ae4b47ca966066f92544bb090348f6a5608"
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
