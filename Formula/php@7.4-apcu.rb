require_relative "../lib/php_pecl_formula"

class PhpAT74Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.21.tgz"
  sha256 "1033530448696ee7cadec85050f6df5135fb1330072ef2a74569392acfecfbc1"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "da2bf1225de921945a481f59f930d1af2b552d99888dd2e3e337d5547444ee6c"
    sha256 cellar: :any_skip_relocation, catalina: "492bb3864872645a81bc17be8a942838fa15e46694c91e48be720a602a6a59a7"
    sha256 cellar: :any_skip_relocation, mojave:   "30695abb3bc5b7dc1880294d3a78c1e70595509497b982d836bed26530c7ba1f"
  end
end
