require_relative "../lib/php_pecl_formula"

class PhpAT71Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "871e2203442274b0cd2e2a4c130e8963affdd4314b88b56386f59ac0663f56f1" => :mojave
    sha256 "9da3ec60ebc9a9a74b7b9f2c91f52264856b7b43ba334a3d74ac34a95be5edc9" => :high_sierra
  end
end
