require_relative "../lib/php_pecl_formula"

class PhpAT71Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.0.1.tgz"
  sha256 "5959607f3e236e19a9d01e1a8c74800fb3138f3528ba6601deedbd8b83ab12f1"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3e27069d5cc73c22253fd5b91eb3cfb295e4f53cdea4bbd9fedcdcea53573e2d" => :mojave
    sha256 "5dde60ddb2a6c235c487487c803b2e83473db728d68811786eb603fbcc9d772c" => :high_sierra
  end

end
