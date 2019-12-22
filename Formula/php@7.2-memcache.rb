require_relative "../lib/php_pecl_formula"

class PhpAT72Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-4.0.5.2.tgz"
  sha256 "7b7667813baea003671f174bbec849e43ff235a8ea4ab7e36c3a0380c2a9ed63"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "bb51e4485a31ed4d571fb0c326e83d6b32d964e82c7903e55dcb148a9195ac26" => :mojave
    sha256 "aee0ffc29383dd8d1b5d817c2a490fa762e48a7b941207ca32575962c448dc18" => :high_sierra
  end

  configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
end
