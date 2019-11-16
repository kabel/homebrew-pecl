require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "e9f5367dc04c3f423a7bf69396bda05442b406b7459340fdccab427dd0894d8c" => :mojave
    sha256 "ff4d6be3d03f901de8a537f7bea219efa9becd6ba4e556f204f302276b7023cb" => :high_sierra
  end
end
