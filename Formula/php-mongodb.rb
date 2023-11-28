require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "7571ef0f9474f2dcdd7a5aa8e257781709de74b1e4eef567317b30251dc57e0b"
    sha256 cellar: :any, ventura:  "9add29037630e8ebcf5e3987a037442a97fb84dccf6da4b913f0d29d1cffa9f3"
    sha256 cellar: :any, monterey: "40b4d34bf59ccf00b6a6d95b6e68fe27fe3de0c19a521473e4b1a578580ec688"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
