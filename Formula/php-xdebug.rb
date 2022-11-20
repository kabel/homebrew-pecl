require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.6.tgz"
  sha256 "554eca0b4d5b7b93cb2258fab0b0bd84cc8721e74322a2255c14e137cbcad5d2"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "9c45d8df38a8d47919347f9ea5679f791ab4347115b713815510695062a07115"
    sha256 big_sur:  "4b1416d3df98e4c815dc6b67e4ee67580d1253e26a26235824d300064f1b63ac"
    sha256 catalina: "9bbcc6bc91507df7de1548851a12713cd4000b32157deaf6747985b351003d80"
  end

  def extension_type
    "zend_extension"
  end
end
