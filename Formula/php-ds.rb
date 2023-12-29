require_relative "../lib/php_pecl_formula"

class PhpDs < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "0b1a1049bc3f36c2a25c9237c8acb631a7e410c4682f80411f2c5f0e2cbe5d3b"
    sha256 cellar: :any_skip_relocation, ventura:  "98dc1342018168064fd8def37171ee831a31ca7117949578af5ea81ce6c2c8db"
    sha256 cellar: :any_skip_relocation, monterey: "3c9f382d11c36d95ab8e9ee9aaaa8e4b06a6e3a9573aa09925c88a74d604ed77"
  end
end
