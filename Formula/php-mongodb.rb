require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9dad1b14194dd01bcd5cd6f2975463523ceeec5fdc531ffcc67d1fd254507f57" => :catalina
    sha256 "37448d9ccf6818090891d25c836226a2c9ffa68b8a002fd0d0867dbbc4be99f3" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
