require_relative "../lib/php_pecl_formula"

class PhpAT81Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "46b685abf1e131d876ceea40c626a855c023ae3b5beabb6ea6cbded0f272ded5"
    sha256 cellar: :any_skip_relocation, monterey: "89306ceb355f9d242ba6cb786cae1d28019ffc4f413df0e7a922310b0e2ab33e"
    sha256 cellar: :any_skip_relocation, big_sur:  "f9d2224ecc0a3f5fcd60042cc81cee66a382817358c7bd86401237578024b569"
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
