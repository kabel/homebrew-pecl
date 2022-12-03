require_relative "../lib/php_pecl_formula"

class PhpAT74Brotli < PhpPeclFormula
  extension_dsl "Brotli compression"
  homepage "https://github.com/kjdev/php-ext-brotli"

  url "https://github.com/kjdev/php-ext-brotli/archive/refs/tags/0.13.1.tar.gz"
  sha256 "1eca1af3208e2f6551064e3f26e771453def588898bfc25858ab1db985363e47"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "8444ebde117da6ffce7d2545906ab7389a7fd3daf4f4877218f8065b95789c89"
    sha256 cellar: :any, monterey: "705f279c639fae48f34710bc897362623d75efc1f5821a857ab176f63277721c"
    sha256 cellar: :any, big_sur:  "e4e22f15251f84d61ee31801a102f59a81040ed96f9cbbd341a533b8ce91779b"
  end

  disable! date: "2022-11-28", because: :versioned_formula

  depends_on "brotli"

  configure_arg %w[
    --with-libbrotli
  ]
end
