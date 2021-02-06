require_relative "../lib/php_pecl_formula"

class PhpAT74Memcached < PhpPeclFormula
  extension_dsl "Extension for interfacing with memcached via libmemcached library"

  url "https://pecl.php.net/get/memcached-3.1.5.tgz"
  sha256 "b288e45f839593e16c4d8508b241de51a86df4f7322153e6becb9e1c819021fd"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "1ca3ea8905fb1f79cb864f6d25b51cafaf2f25bbe1b17a1f8cceeb6c30cc1135" => :catalina
    sha256 "10e7cb1b7d526ccb9b07e1503bb0fd31398ea942c5df2b4d951bc81640473d38" => :mojave
  end

  depends_on "libmemcached"

  configure_arg %W[
    --with-libmemcached-dir=#{Formula["libmemcached"].opt_prefix}
    --with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr
  ]
end
