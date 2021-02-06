require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f972366bdd9f6b01b79cdfc98bad9016068853c8cc611e13713d393fdff64042" => :catalina
    sha256 "9ceea4621796c954742fdac85569893a4ac426f7d78c7912006498592b7ea007" => :mojave
  end
end
