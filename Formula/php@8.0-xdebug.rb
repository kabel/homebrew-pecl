require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.2.tgz"
  sha256 "083f6be1100df79ccbdf049dafc3930bab35f0eb80f9b19ac1ad84fa6779ccf3"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "8a5d71c857cf63e41d9a22ea7af85bba1774b62447a47f957ae9abe8f2f30830"
    sha256 catalina: "c7d84fcaaf05047f93f6cae4ce5c9338165ddedfb6cbd0b024b8b639fcba8e48"
  end

  def extension_type
    "zend_extension"
  end
end
