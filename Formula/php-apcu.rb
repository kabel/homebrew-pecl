require_relative "../lib/php_pecl_formula"

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.23.tgz"
  sha256 "67ee7464ccad2335c3fa4aeb0b8edbcf6d8344feea7922620c6a13015d604482"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "f7307331dbf9822ba7cece2570b841a96ab0d26ab156cc4e027b6416a19a9d5a"
    sha256 cellar: :any_skip_relocation, ventura:  "d4b4922a79bae819276919eb1140b14b9e79c96317e6bf0b2e7737a8fe4b96f2"
    sha256 cellar: :any_skip_relocation, monterey: "f52d1c84e1150b6dddadaa57338e321c8ddf371f0362b001523d5d4489b90b2b"
  end
end
