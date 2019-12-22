require_relative "../lib/php_pecl_formula"

class PhpAT72Mailparse < PhpPeclFormula
  extension_dsl "Email message manipulation"

  url "https://pecl.php.net/get/mailparse-3.0.4.tgz"
  sha256 "9da0ab0f15323f8265fcfb867f0318ec985b306007cff1f7653cb61e477d563b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "2608e377bdb1d36a4a10d1a40f3c8f111e73ba36b5af7a291d1f207d7a3d6189" => :mojave
    sha256 "e7a64b6cffb6c0139e02b45ec0d0842b02306d0cac9bac13c00523ec782bc903" => :high_sierra
  end
end
