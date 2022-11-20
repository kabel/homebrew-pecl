require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.6.tgz"
  sha256 "554eca0b4d5b7b93cb2258fab0b0bd84cc8721e74322a2255c14e137cbcad5d2"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 ventura:  "826701b6bdcda75217432658f7352595bdd6fbe87cbd0b0a3129a925fadc9e3e"
    sha256 monterey: "77ab2ea871d9ba852243beed087f411e1208355676de5163abec4bcbbddc7ad0"
    sha256 big_sur:  "c09cca9ce9422e8d7358d699a1d3e72854b091b29ee2a97025b8d318c42471c4"
  end

  def extension_type
    "zend_extension"
  end
end
