require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.68.0.tgz"
  sha256 "4e022e052d5b7997efd42f3b67f1175dbbb772cfd435570852febc0f569065bb"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "024e4ebdbcc0bb4da3322e01b78a385ecde529ab7ca5b25d212a951a105f8929"
    sha256 cellar: :any_skip_relocation, ventura: "d44c9adcb50d1949f910e7bc10117a9e600601bb417453c11a169ae0d15ef503"
  end
end
