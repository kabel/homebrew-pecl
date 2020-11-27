require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "200b6fa78f30e096d239319c7c03f0ee60996f1c2004d8ec4636267276f2597e" => :catalina
    sha256 "7489b066f171644fe150e5893b12c05b4dbb838bfeb6dca2d2d2538b695bf86b" => :mojave
  end
end
