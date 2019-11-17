require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.1.tgz"
  sha256 "621c9d2b4054c797b0e5d5bc5e0f1eeb49bedb37f20e46f838aa4d17d2fe8180"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b2e22b28ff84fbc2fcf9738b04ed21dba2f29f6740cb45f743d94ffc12689495" => :mojave
    sha256 "6ac148e7efe8dc341e3c5f8895d5f70ee7060e850864bd1c773dcf4cf765d631" => :high_sierra
  end
end
