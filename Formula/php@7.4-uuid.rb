require_relative "../lib/php_pecl_formula"

class PhpAT74Uuid < PhpPeclFormula
  extension_dsl "UUID extension"

  url "https://pecl.php.net/get/uuid-1.2.0.tgz"
  sha256 "5cb834d32fa7d270494aa47fd96e062ef819df59d247788562695fd1f4e470a4"
  license "LGPL-2.1-only"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "2724211e87baaa27003935ccd51d5e46be0d11cc227e08ff34adf218c0507ac2"
    sha256 mojave:   "cfbf973b95ec75091f47c9d95cc11d056eaf4c8a5a6ba0988de3fe6d6df728df"
  end

  depends_on "e2fsprogs"

  configure_arg "--with-uuid=#{Formula["e2fsprogs"].opt_prefix}"
end
