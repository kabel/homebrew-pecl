require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.1.tgz"
  sha256 "9be3ae0fdb4dc4a4c68084626cddc56f12396487e309a8c8dd318f0f900d1a68"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1f53ab3448345c7a8db44e72bbf51c45d15831ba70bfd190bb0751a7d6c1c8db"
    sha256 catalina: "4be73eef43597b4545bd927a20482f5f335417d31cc29da4779464eb03d375b0"
  end

  def extension_type
    "zend_extension"
  end
end
