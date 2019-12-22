require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.4.tgz"
  sha256 "9da0ab0f15323f8265fcfb867f0318ec985b306007cff1f7653cb61e477d563b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8aa39873b7df8a2a54ed796c758817ef589c9d9abf0d7825f6c4e5d11dfe677d" => :mojave
    sha256 "b2040f487a88c57fe6637127c27f3735343c55b6caef56154585d382b2e4cb65" => :high_sierra
  end
end
