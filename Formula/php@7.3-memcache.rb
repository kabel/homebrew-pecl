require_relative "../lib/php_pecl_formula"

class PhpAT73Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9ee2f8cf98a99d375737f6ec7a9e6d6246d70c4a85e7acde741e5420912888b5" => :mojave
    sha256 "2196d4bab4111efd6464ed35c789558dd82c30a6affe4f621fa473a827e0619e" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
