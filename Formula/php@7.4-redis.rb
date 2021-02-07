require_relative "../lib/php_pecl_formula"

class PhpAT74Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.3.tgz"
  sha256 "37789161e164cd52239a30c9a238da61fec5c8395cdac385b6ed8f0c50fd92f0"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, catalina: "c2415d615fbfd31dd2263b0827cbb128c5e35a9e45f8981fddbc4124cb065542"
    sha256 cellar: :any_skip_relocation, mojave:   "facfa7dd05f774ae5e0049bdf0b85eccfe4214ab0b6b870f0a23625c2474bc75"
  end
end
