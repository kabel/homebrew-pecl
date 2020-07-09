require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5541cd841eb666156991cbae01f4211de0d37686eddb6810fd77a485f6cd7e51" => :catalina
    sha256 "c2cf7ff22597d988fb7d5a33cdfbd0e2c920a670dd620b78535729fd94f254f2" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
