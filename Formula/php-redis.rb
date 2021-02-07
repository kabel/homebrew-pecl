require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6b1f54520c2b2e148654ae3abe0a2c6421fe5af16517d8a2416be3c91b34b89f" => :catalina
    sha256 "002625377d7e123bfa2f2eed034290146cfa5b07772a33caad143f29c4fa0183" => :mojave
  end
end
