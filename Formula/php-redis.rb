require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "f5fd34141405c2141b73f6678a0c72b61a24086fcc84a063f9bfe31b9955b4a2"
    sha256 cellar: :any_skip_relocation, mojave:   "039c530a736328f9af7e08fac1ba195d8d61e3dcd8af5c85fbdd3d91d772e7a9"
  end
end
