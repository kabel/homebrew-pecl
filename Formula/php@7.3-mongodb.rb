require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "633f9ca054a7ddbb3eb59a2adf54f74d43bac71e3530bd3e2a0f25689025501b"
    sha256 catalina: "54e4ef6905170fa8b8aa396b05ede42dd872068f4e7786f4375c17ced18b4ab5"
    sha256 mojave:   "cf98a2b546f647119f0c862e883549d5ecd0643e2993703cf1b09b468778ce40"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
