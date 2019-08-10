require_relative "../lib/php_pecl_formula"

class PhpAT71Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "58b988f5dfe6b4267f7ce8c29c7b33a04fa90299a6030acf321aba6732ce19fb" => :mojave
    sha256 "615d95d70a051f3df1aac8c69098cd2f345a1eeed84b3610d4ca8ecaf8a249c4" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
