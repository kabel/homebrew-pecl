require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.4.tgz"
  sha256 "b27290491f4634b0cd3badfc3a2be98fb1e3c0c3710a706724d8b195baad72af"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "fa8ec44a7e641ba545b6966b74facd5f578c880b6fd695d6e0f813b4cf43ec14"
    sha256 catalina: "4f5d8c2032c7be9a91f9a7efa6f645d279d7dbd4cb9303ab1eb398fc40ac7fb3"
    sha256 mojave:   "996dcee5667b1cecff76562322c2177bde02d6ef642fa4182c4c0580b18a6bfd"
  end

  def extension_type
    "zend_extension"
  end
end
