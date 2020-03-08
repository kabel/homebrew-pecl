require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.2.0.tgz"
  sha256 "4e9096b2bf2d1a67d9a828d07b0a22ba09eb54c1df8a2ba80dc6f04c0504f1bb"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b2e22b28ff84fbc2fcf9738b04ed21dba2f29f6740cb45f743d94ffc12689495" => :mojave
    sha256 "6ac148e7efe8dc341e3c5f8895d5f70ee7060e850864bd1c773dcf4cf765d631" => :high_sierra
  end
end
