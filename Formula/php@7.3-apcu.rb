require_relative "../lib/php_pecl_formula"

class PhpAT73Apcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.18.tgz"
  sha256 "d46debe7acad6073b663ba1710c5cac671a60bf666966cf199bf6d07499bde2b"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "cff64d66a4c2532c3074c64d228671a1211e18f8c987bf0c00b466898d667654" => :mojave
    sha256 "20077a43f0eca35d382c1fcdeee3aa2b80252174d8b548b76e330319983b139b" => :high_sierra
  end
end
