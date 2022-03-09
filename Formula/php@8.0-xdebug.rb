require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.3.tgz"
  sha256 "37d0a6701955f5b3406c6c327b7702bd7c21462e656f3b4cce24a05258013d4e"
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
