require_relative "../lib/php_pecl_formula"

class PhpAT73Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.19.tgz"
  sha256 "837fbc99d5c79efb510fafaf585ef0c06e02baf8310a7d77f93e402c93276ce0"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "cff64d66a4c2532c3074c64d228671a1211e18f8c987bf0c00b466898d667654" => :mojave
    sha256 "20077a43f0eca35d382c1fcdeee3aa2b80252174d8b548b76e330319983b139b" => :high_sierra
  end
end
