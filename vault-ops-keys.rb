class VaultOpsKeys < Formula
  desc "Script to show keys from a list from Enterprise Vault instance"
  homepage "https://www.suncoast.systems/homebrew-sharedOps/"
  url "https://github.com/dotcomrow/vault-ops-keys/archive/refs/tags/v1.2.tar.gz"
  sha256 "d0404198ce9dbac2b44c3f9ea27fe360659db7c80905a72aa2bfef0baddc0a8d"
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
