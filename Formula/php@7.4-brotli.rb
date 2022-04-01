require_relative "../lib/php_pecl_formula"

class PhpAT74Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "4a5ba62f4cc19a4d056e22ce2156f7385c7666ca6e3c440b0a63a30006e42366"
    sha256 cellar: :any, big_sur:  "e1ab59abbdbc942f2bd20553c1ed5a4f04c4737024c442849a44d0869113c300"
    sha256 cellar: :any, catalina: "c140c97d51502570a717f7440f9c4415ce8b0fe625940908488a6ce90cac6978"
  end

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
