require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.15.tgz"
  sha256 "eff099b0343b45fbe9765d4b3d441064ddefbbf9cfb7198487de9bda6b8f4907"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:   "bf2bf064d8326d15db1db840b3f092b575205f9e382659252ae8c9f2fb9c84d7"
    sha256 cellar: :any_skip_relocation, ventura:  "283bc2fc5829563f81ec6ce132dadd94531d94ab64ac2d98f979f71d84da5aa9"
    sha256 cellar: :any_skip_relocation, monterey: "0a95b2815506e8cedf6315c9eef5aa64d67a1f85ebd52a3fd85855761965a378"
  end

  conf_order "05"
end
