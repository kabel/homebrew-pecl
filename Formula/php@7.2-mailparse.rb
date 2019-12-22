require_relative "../lib/php_pecl_formula"

class PhpAT72Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.4.tgz"
  sha256 "9da0ab0f15323f8265fcfb867f0318ec985b306007cff1f7653cb61e477d563b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "98b7d0ff3956b2a978784ce9b79ef17696e1d731655403679fc6c20e61a8a286" => :mojave
    sha256 "67b09f5829f7be1074a2e89c444508d80ad95eb59fb3f61f28910bf8f8c2b8b7" => :high_sierra
  end
end
