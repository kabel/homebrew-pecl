require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.0preview.tgz"
  sha256 "31af4b543796c64d9dc220419cc70304853128122a3adca62e07637ad2b56184"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "44d302ea39241a110934a66e64d4b6d6c89c49e6de9b40482d09cb9fc667b6f7" => :mojave
    sha256 "8ad7a614404329e8f4ccc35298e0419c750b083529eedbcd05bad762708446ff" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.0preview"
  end
end
