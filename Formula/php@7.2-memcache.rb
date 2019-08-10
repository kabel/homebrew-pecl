require_relative "../lib/php_pecl_formula"

class PhpAT72Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "07a527964bdc5f13aeecce512e6d24765fa31bf4e58f9f078f5b53d84f6bf095" => :mojave
    sha256 "e9b6e933b203560b62cb35c06cd842172f5ceaae70bde0500bea48f7d21ea6af" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
