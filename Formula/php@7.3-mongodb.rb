require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.2.tgz"
  sha256 "fcef8d5ab1694ad79e5d7d6159378e2bc4d5ee573835384fb3095e0204008306"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b800ef3787a32a09e883003d688e11f1e66e43ddfd1a9f8f337191cbfddf22ab" => :catalina
    sha256 "b0034a80f733784aa3945c317fdbee1df76ec8c8ce7990c133ac78434f6519c9" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
