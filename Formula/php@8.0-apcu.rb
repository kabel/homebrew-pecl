require_relative "../lib/php_pecl_formula"

class PhpAT80Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "18783c29172414af8311ea49a6b85d92b40283c4c07e4859a350a0c28162a91c"
    sha256 cellar: :any_skip_relocation, big_sur:  "8a88e4e6b5f8225355462d788190cd7134d6bb47d9fb1149c94e2bebd01dc21a"
    sha256 cellar: :any_skip_relocation, catalina: "14f55a374b1eff983c5ccb5fb6716f17a802ff0c0c598a0cb29fdb4d7b269d6f"
  end
end
