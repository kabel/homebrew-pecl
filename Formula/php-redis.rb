require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  revision 1
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6b1f54520c2b2e148654ae3abe0a2c6421fe5af16517d8a2416be3c91b34b89f" => :catalina
    sha256 "002625377d7e123bfa2f2eed034290146cfa5b07772a33caad143f29c4fa0183" => :mojave
  end
end
