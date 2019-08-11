require_relative "../lib/php_pecl_formula"

class PhpAT72Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.0.4.tgz"
  sha256 "63079b6a62a9d43691ecbcd4eb52e5e5fe17b5a3d0f8e46e3c17ff265c06a11f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "264128a261e486c2c5a95566fdfa64b0d8014dfdfb410046f8dab5f12927e078" => :mojave
    sha256 "04c4b416e39962b3a62bb023339cc5c6df882ba12bc362e9a07e939f86b599e5" => :high_sierra
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
