require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "f90020e113dd7aeef4011d8d4fb6c0a6ce7f8cfd7d81d8a0d5c9374b9fb411fa"
    sha256 cellar: :any, monterey: "be2a4b2fa804d6b4131a7f97b97ee2d6f00a49dd4d0f49176574f0c120cabb50"
    sha256 cellar: :any, big_sur:  "1151ebf6aa3051257ca2986fc1cc03362429060fce06770a8d85e2ff7537a02c"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
