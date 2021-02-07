require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "728223482f5be18b79fc2660e2d858032078e6b5224ee0d56245780fe10d77e6" => :catalina
    sha256 "8401279abaeeb3994f1d43bc3018a884e1bf43ab7ec2661a40d952e4bbb792ba" => :mojave
  end
end
