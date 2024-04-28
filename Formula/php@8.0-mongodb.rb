require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "bc44aab25799a283c8cab93816fe821bab0da8716502685f4c1db6f1bfbc93ef"
    sha256 cellar: :any, ventura:  "257f3f2a4e4811ad566955b584cfabfd2f4a01aac15f515e67a68178ccf89b55"
    sha256 cellar: :any, monterey: "d3d018dfe8a9081419bab5348f9ac2d8785257183f810d68aac5d3d232c97686"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
