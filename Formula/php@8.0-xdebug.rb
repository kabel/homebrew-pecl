require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.6.tgz"
  sha256 "554eca0b4d5b7b93cb2258fab0b0bd84cc8721e74322a2255c14e137cbcad5d2"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "76f0867b68d01221fd4b164cebf661fd0fea5c0bd71fb5bb03e633df7bb10e19"
    sha256 big_sur:  "b9b41ad3c61ddd5b94344ee69d27f58cc7e20333129cb8828d84273aa0763444"
    sha256 catalina: "b3e1682aca69d4493dbe5e67f35854f6c187dd9f9acb134af11978079b56df54"
  end

  def extension_type
    "zend_extension"
  end
end
