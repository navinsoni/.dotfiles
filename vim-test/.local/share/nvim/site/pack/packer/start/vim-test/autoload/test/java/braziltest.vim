if !exists('g:test#java#braziltest#file_pattern')
  let g:test#java#braziltest#file_pattern = '\v([Tt]est.*|.*[Tt]est(s|Case)?)\.java$'
endif

function! test#java#braziltest#test_file(file) abort
  return a:file =~? g:test#java#braziltest#file_pattern
    \ && exists('g:test#java#runner')
    \ && g:test#java#runner ==# 'braziltest'
endfunction

function! test#java#braziltest#build_position(type, position) abort
  let filename = fnamemodify(a:position['file'], ':t:r')
  let packagename = s:get_java_package(a:position['file'])
  let testClass = packagename . "." . filename
  if a:type ==# 'nearest'
    let name = s:nearest_test(a:position)
    if !empty(name)
      return ['single-unit-test -DtestClass='. testClass. ' -DtestMethods='.name]
    else
      return ['single-unit-test -DtestClass='. testClass]
    endif
  elseif a:type ==# 'file'
    return ['single-unit-test -DtestClass='. testClass]
  else
    return [filename]
  endif
endfunction

function! test#java#braziltest#build_args(args) abort
  return a:args
endfunction

function! s:get_java_package(filepath)
  " abspath to sourcefile
  let abspath = fnamemodify(a:filepath, ':p')
  let abspath = substitute(a:filepath, '\\', '/', 'g')

  " strip path-to-project and maven-boilerplate dir-structure
  let relpath = substitute(abspath, '^.*tst/', "", "g")
  let package_path = substitute(relpath, '\/[^/]\+$', "", "g")
  let java_package = substitute(package_path, '/', '.', 'g')
  return java_package
endfunction

function! test#java#braziltest#executable() abort
   return "brazil-build"
endfunction

function! s:nearest_test(position) abort
  let name = test#base#nearest_test(a:position, g:test#java#patterns)
  return get(name['test'], 0)
endfunction
