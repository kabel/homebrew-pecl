require_relative "../lib/php_pecl_formula"

class PhpRedis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.3.0.tgz"
  sha256 "cd532d9e0975fe0e584d823932890c0b8b4f8fdaffb7c453d74c4f3942d450a5"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "ce5fbf18b50de2cfb4e271befb717e2550328296d3c5f7ff5fb163839bf13a86" => :catalina
    sha256 "43b4d79d817ef71efde47bffda3915f3552c55f546ebcd3dc28310dc2f2871f5" => :mojave
  end
end
