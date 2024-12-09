require_relative "../lib/php_pecl_formula"

class PhpAT82Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.68.0.tgz"
  sha256 "4e022e052d5b7997efd42f3b67f1175dbbb772cfd435570852febc0f569065bb"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "731e0f91cce89d38729f167ce90139efdf0dc149c46f5bae8f7829d6197f3650"
    sha256 cellar: :any_skip_relocation, ventura: "313c980cda1456e137093e3b2af15ab045615fd261b3285e8fe48631c51c3840"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
