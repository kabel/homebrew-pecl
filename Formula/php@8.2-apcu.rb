require_relative "../lib/php_pecl_formula"

class PhpAT82Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.23.tgz"
  sha256 "67ee7464ccad2335c3fa4aeb0b8edbcf6d8344feea7922620c6a13015d604482"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "4f238e9a90cfb3594850555c06e066c0eafca762f953cc31e8254101d29031f6"
    sha256 cellar: :any_skip_relocation, ventura:  "c0146422131ce45e635a97342a5038c2c525b9377ff9e5fd6c733ebb297c9db4"
    sha256 cellar: :any_skip_relocation, monterey: "06ffbbad9a73ed03f96bf713cfb5c5da4c3c76052a0a7095e851fdf012885c36"
  end

  deprecate! date: "2025-12-08", because: :unsupported
end
