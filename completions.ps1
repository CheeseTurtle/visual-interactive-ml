
using namespace System.Management.Automation
using namespace System.Management.Automation.Language

Register-ArgumentCompleter -Native -CommandName 'mdbook' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'mdbook'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'mdbook' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('init', 'init', [CompletionResultType]::ParameterValue, 'Creates the boilerplate structure and files for a new book')
            [CompletionResult]::new('build', 'build', [CompletionResultType]::ParameterValue, 'Builds a book from its markdown files')
            [CompletionResult]::new('test', 'test', [CompletionResultType]::ParameterValue, 'Tests that a book''s Rust code samples compile')
            [CompletionResult]::new('clean', 'clean', [CompletionResultType]::ParameterValue, 'Deletes a built book')
            [CompletionResult]::new('completions', 'completions', [CompletionResultType]::ParameterValue, 'Generate shell completions for your shell to stdout')
            [CompletionResult]::new('watch', 'watch', [CompletionResultType]::ParameterValue, 'Watches a book''s files and rebuilds it on changes')
            [CompletionResult]::new('serve', 'serve', [CompletionResultType]::ParameterValue, 'Serves a book at http://localhost:3000, and rebuilds it on changes')
            [CompletionResult]::new('help', 'help', [CompletionResultType]::ParameterValue, 'Print this message or the help of the given subcommand(s)')
            break
        }
        'mdbook;init' {
            [CompletionResult]::new('--title', 'title', [CompletionResultType]::ParameterName, 'Sets the book title')
            [CompletionResult]::new('--ignore', 'ignore', [CompletionResultType]::ParameterName, 'Creates a VCS ignore file (i.e. .gitignore)')
            [CompletionResult]::new('--theme', 'theme', [CompletionResultType]::ParameterName, 'Copies the default theme into your source folder')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'Skips confirmation prompts')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;build' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('--dest-dir', 'dest-dir', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('--open', 'open', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;test' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('--dest-dir', 'dest-dir', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'c')
            [CompletionResult]::new('--chapter', 'chapter', [CompletionResultType]::ParameterName, 'chapter')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'A comma-separated list of directories to add to the crate search path when building tests')
            [CompletionResult]::new('--library-path', 'library-path', [CompletionResultType]::ParameterName, 'A comma-separated list of directories to add to the crate search path when building tests')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;clean' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('--dest-dir', 'dest-dir', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;completions' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;watch' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('--dest-dir', 'dest-dir', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('--open', 'open', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;serve' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('--dest-dir', 'dest-dir', [CompletionResultType]::ParameterName, 'Output directory for the book
Relative paths are interpreted relative to the book''s root directory.
If omitted, mdBook uses build.build-dir from book.toml or defaults to `./book`.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'Hostname to listen on for HTTP connections')
            [CompletionResult]::new('--hostname', 'hostname', [CompletionResultType]::ParameterName, 'Hostname to listen on for HTTP connections')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Port to use for HTTP connections')
            [CompletionResult]::new('--port', 'port', [CompletionResultType]::ParameterName, 'Port to use for HTTP connections')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('--open', 'open', [CompletionResultType]::ParameterName, 'Opens the compiled book in a web browser')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
        'mdbook;help' {
            [CompletionResult]::new('init', 'init', [CompletionResultType]::ParameterValue, 'Creates the boilerplate structure and files for a new book')
            [CompletionResult]::new('build', 'build', [CompletionResultType]::ParameterValue, 'Builds a book from its markdown files')
            [CompletionResult]::new('test', 'test', [CompletionResultType]::ParameterValue, 'Tests that a book''s Rust code samples compile')
            [CompletionResult]::new('clean', 'clean', [CompletionResultType]::ParameterValue, 'Deletes a built book')
            [CompletionResult]::new('completions', 'completions', [CompletionResultType]::ParameterValue, 'Generate shell completions for your shell to stdout')
            [CompletionResult]::new('watch', 'watch', [CompletionResultType]::ParameterValue, 'Watches a book''s files and rebuilds it on changes')
            [CompletionResult]::new('serve', 'serve', [CompletionResultType]::ParameterValue, 'Serves a book at http://localhost:3000, and rebuilds it on changes')
            [CompletionResult]::new('help', 'help', [CompletionResultType]::ParameterValue, 'Print this message or the help of the given subcommand(s)')
            break
        }
        'mdbook;help;init' {
            break
        }
        'mdbook;help;build' {
            break
        }
        'mdbook;help;test' {
            break
        }
        'mdbook;help;clean' {
            break
        }
        'mdbook;help;completions' {
            break
        }
        'mdbook;help;watch' {
            break
        }
        'mdbook;help;serve' {
            break
        }
        'mdbook;help;help' {
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}
