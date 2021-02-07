require_relative "../lib/php_pecl_formula"

class PhpAT73Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f972366bdd9f6b01b79cdfc98bad9016068853c8cc611e13713d393fdff64042" => :catalina
    sha256 "9ceea4621796c954742fdac85569893a4ac426f7d78c7912006498592b7ea007" => :mojave
  end
end
