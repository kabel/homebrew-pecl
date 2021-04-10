require_relative "../lib/php_pecl_formula"

class PhpAT74Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.3.0.tgz"
  sha256 "0114b146e1036d75a83cd438200df73db030b5d12b8c687843809d1d0cec91be"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "2c7bc666e7367c3458fae2bfcc7ef7268d7c9eadf5a1e998205222f57dcf3730"
    sha256 cellar: :any_skip_relocation, mojave:   "32becd09f7b26a01f2db10144c6f02c47737a5d08341a6be184b2223a6135dd0"
  end
end
