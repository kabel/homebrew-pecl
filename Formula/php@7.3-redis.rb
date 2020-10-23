require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c8a73d629163a307aca75b93041dda0d0b27095eaadccc49d0149e56705208ac" => :catalina
    sha256 "ef5d25ab5b1006fb6dc365aec13031c87093861f82a572e3e45a7f2a039483af" => :mojave
  end
end
