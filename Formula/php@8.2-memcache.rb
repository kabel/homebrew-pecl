require_relative "../lib/php_pecl_formula"

class PhpAT82Memcache < PhpPeclFormula
  extension_dsl "memcache extension"

  url "https://pecl.php.net/get/memcache-8.2.tgz"
  sha256 "b3f0640eacdeb9046c6c86a1546d7fb8a4e9f219e5d9a36a287e59b2dd8208e5"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "1678f7b1f385cf1e8e31641482502c4994fb329e35722193b3a81c8c3d33d68c"
    sha256 cellar: :any_skip_relocation, ventura:  "b5d9a2e5a79facf4896aa06ebcbdcaa54eb7caef9570a3cdba405ef15a09e484"
    sha256 cellar: :any_skip_relocation, monterey: "8fbb6da8af896a370efbfbf4d0e8c68e437175bb2de08a4fc0c4859545067a74"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  on_macos do
    configure_arg "--with-zlib-dir=#{MacOS.sdk_path_if_needed}/usr"
  end
end
