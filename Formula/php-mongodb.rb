require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.18.1.tgz"
  sha256 "f957b71154052fa9706ce703f4f8043cfe2655367455483798b59269ebe9f135"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "17f50a4068087fc7b257508870b2475671cc32fef9a251d06bda5b33639c50d3"
    sha256 cellar: :any, ventura:  "4245c491034502b82ff33f3d6e2cd86bb318f783351c5e215ad131c493d5c418"
    sha256 cellar: :any, monterey: "5d066072566ed4a5cc6d1970037b5123911099c88783229ed8fdb9bbf4623918"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
