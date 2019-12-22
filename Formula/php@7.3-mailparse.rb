require_relative "../lib/php_pecl_formula"

class PhpAT73Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.4.tgz"
  sha256 "9da0ab0f15323f8265fcfb867f0318ec985b306007cff1f7653cb61e477d563b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6c791ca550e1a85011aab83cbfe7b30d7aafce6a0564a2f32c0f6254f45f0ed0" => :mojave
    sha256 "f9d829c58c70c1988dbd0626da81bc22d588bdc9ec65c4c8d750e5abf1f66e0c" => :high_sierra
  end
end
