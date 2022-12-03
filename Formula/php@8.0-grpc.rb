require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.51.1.tgz"
  sha256 "a8a79bf27bceeb8088c2a3a5a76c1146bbbd3e8d7a8a13e44ddbcfd715213ba9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "8e6fc7396c0bbc7277ef60ca876ca02906157cd0f6cdab91efd40ff0f4c66bb4"
    sha256 cellar: :any_skip_relocation, monterey: "5b6c09448fc0e788309c6f5bf55e150bdda72dff340768a1a4c85e88305896b0"
    sha256 cellar: :any_skip_relocation, big_sur:  "0992fa1a646d5e5e4dc51a7d826b2fcb36a0b82fd96e915ab945aa167d0187af"
    sha256 cellar: :any_skip_relocation, catalina: "7549283f49ce873c52f93402d7fb57569b1a383f65b35b657dcf170315ad3867"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end
