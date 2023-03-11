require_relative "../lib/php_pecl_formula"

class PhpAT80Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "d1f2f6dcccc55a5c2227eab5fdb5fcdfd6806b418ad19c04c9339ed11202e09c"
    sha256 cellar: :any, monterey: "2e67dca3b7f2deedbc0868f4846ac8664ab013e6430c231d4d2afd958eabce22"
    sha256 cellar: :any, big_sur:  "c27812adf5b9d5112cea13cb6544409d2803b22c3c5e7f1af06e58dbd54c0360"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "libyaml"
end
