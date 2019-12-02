require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a1de6fc18be73569501cd693fbcfa0e5d1b63a942228fa9d5b6db2ce5bcd2f80" => :mojave
    sha256 "d156eb51bda6c59e598ac8b4b0bf5cfa8beeea2dc1909eb955062208a52898e8" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
