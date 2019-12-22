require_relative "../lib/php_pecl_formula"

class PhpMailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.4.tgz"
  sha256 "9da0ab0f15323f8265fcfb867f0318ec985b306007cff1f7653cb61e477d563b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "403426459a61f6a41a8e095318bb3e5f53b51df01a40705d0823041c7fa7b77b" => :mojave
    sha256 "73fd1383d96ed67a56fb9f734e7f8d433608b3628f99a3af5c2a77ec46f152ab" => :high_sierra
  end
end
