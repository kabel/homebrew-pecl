require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "d7870721cd4d2944a1cef365fafa853a742500dee0def5ba808416e0d85e5e00"
    sha256 cellar: :any, ventura:  "3d805b6cbba78a711309f1ae20457bef9b1b5283b149707c434d5c15d3a054f4"
    sha256 cellar: :any, monterey: "529ad347029dc6158ee2bb446db9432540927270d623f7494f80f15b8d4653ae"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
