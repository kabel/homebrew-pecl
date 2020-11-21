require_relative "../lib/php_pecl_formula"

class PhpJsmin < PhpPeclFormula
  extension_dsl "Extension for JavaScript minification"

  url "https://pecl.php.net/get/jsmin-3.0.0.tgz"
  sha256 "f936ccd01df91eb73236ecfdacfd1e2d3de92e7e776ad5d0f3c6f65d17948783"
  license "PHP-3.01"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "374eda7f2b8069afa8c9cd2e8609db4179e9f20f27406387c821fda89fe070a3" => :catalina
    sha256 "ce0a55c76c2ab2e34713dba19b889c9736b936833d9afe2aa97fd4eaf3698ac5" => :mojave
  end

end
