require_relative "../lib/php_pecl_formula"

class PhpAT81Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.1.tgz"
  sha256 "2235c8584ca8911ce5512ebf791e5bb1d849c323640ad3e0be507b00156481c7"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "a327eba8ab633eac8de26f4b34e1777863ef3b4b6218e46a0945854890b50444"
    sha256 cellar: :any, ventura: "55896a94f215c870866b8baa835afb2ff9aeac66d1dbdef3b57589c22414cb91"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
