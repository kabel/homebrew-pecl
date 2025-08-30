require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "d3ac54593bb8c9e89b376f3d70ec31c753a9267b573b804ccf8c8e795b47bb37"
    sha256 cellar: :any_skip_relocation, ventura: "f0aa1c92ba39f726d4b880dd531d8b15d52cee9c44f3e2cb8ddbbefeb04f8e56"
  end

  conf_order "05"
end
