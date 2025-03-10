require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.70.0.tgz"
  sha256 "11336d7bc4465148db506348006dd5559ce478eee4bf1b080bb31b89de6974b7"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "024e4ebdbcc0bb4da3322e01b78a385ecde529ab7ca5b25d212a951a105f8929"
    sha256 cellar: :any_skip_relocation, ventura: "d44c9adcb50d1949f910e7bc10117a9e600601bb417453c11a169ae0d15ef503"
  end
end
