require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.0.tgz"
  sha256 "0d9f670b021288bb6c9b060979f191f1da773d729100673166f38b617e24317e"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "530b9f673ada021ac4f23b5549b36f2ebaed75edd07f3cb77e87bc7ae41cd173"
    sha256 cellar: :any, catalina: "a8a600f473cf60f73c284050310b49a785b37307717e0d38932b3e1e4eaa1d43"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
