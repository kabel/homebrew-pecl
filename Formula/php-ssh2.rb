require_relative "../lib/php_pecl_formula"

class PhpSsh2 < PhpPeclFormula
  extension_dsl "Bindings for the libssh2 library"

  url "https://pecl.php.net/get/ssh2-1.2.tgz"
  sha256 "7f9f205f5b555692f7b010ffb68a01e21860176062f2ec14dc577d994cecd929"
  revision 2
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "d6ce88200971e766352b9ac23e8144161623a3379c3974fc06ef527200143812" => :mojave
    sha256 "8607f864166fe898522976c0b2906ad2afe6133f84ccd97f0aaeb4dbf7464f89" => :high_sierra
  end

  depends_on "libssh2"

  configure_arg "--with-ssh2=#{Formula["libssh2"].opt_prefix}"
end
