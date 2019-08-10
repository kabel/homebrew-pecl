require_relative "../lib/php_pecl_formula"

class PhpMemcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://github.com/websupport-sk/pecl-memcache/archive/4.0.4.tar.gz"
  sha256 "022607027e31f63c8bf7958a334743ca7c2a1058b3b5fe6e0aea67926954facf"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "98d1d9c56e75aaf324d99f6437f4cdba457c1739c08a408f87a0c57da3266d78" => :mojave
    sha256 "6bb7f51e696d9e38a8b28833668927a23bcfe1fb477c3e12167b3c3614825fdd" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
