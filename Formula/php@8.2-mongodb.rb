require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "3406930339a9c8794b443a3960fd6c8d10cfbe8dd3113b5eb2a2e4d23f72fd6d"
    sha256 cellar: :any, ventura:  "67530c0cac1f6457e4bbf489ec5578b6f68e438365e8f0526a838c8634ea279e"
    sha256 cellar: :any, monterey: "6233823155ce4ff32e9fda99e4bb5639b74d2d6b7821239f3419ee282c8cc325"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
