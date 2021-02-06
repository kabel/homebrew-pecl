require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.2.tgz"
  sha256 "f4e92de628abcb917cdc810df045ca3fa0f2af34673eaa2a03350e3c5c5fdab1"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "728223482f5be18b79fc2660e2d858032078e6b5224ee0d56245780fe10d77e6" => :catalina
    sha256 "8401279abaeeb3994f1d43bc3018a884e1bf43ab7ec2661a40d952e4bbb792ba" => :mojave
  end
end
