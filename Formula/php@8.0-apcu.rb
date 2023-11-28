require_relative "../lib/php_pecl_formula"

class PhpAT80Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.23.tgz"
  sha256 "67ee7464ccad2335c3fa4aeb0b8edbcf6d8344feea7922620c6a13015d604482"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "e1898b1684e35a7f71ec7e0fa1f35753722f5734a2ea8fe15bb6e9a09d694181"
    sha256 cellar: :any_skip_relocation, ventura:  "fb040a1b21238255d700d0301916444ecedc336f25289501140ce40969bc439b"
    sha256 cellar: :any_skip_relocation, monterey: "b5bf618024b7eeef1b9a0bcbe0c763feba06a02755083e85111ed2301d58e604"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
