macro(ensure_llvm_is_present dest_dir name)

if(EXISTS "${dest_dir}/${name}")
    MESSAGE("LLVM already exists.")
else(EXISTS "${dest_dir}/${name}")
    MESSAGE("Downloading LLVM 3.3")
    execute_process( COMMAND wget http://llvm.org/releases/3.3/llvm-3.3.src.tar.gz )
    execute_process( COMMAND tar zxf llvm-3.3.src.tar.gz )
    execute_process( COMMAND mv llvm-3.3.src ${dest_dir}/${name} )
    execute_process( COMMAND rm llvm-3.3.src.tar.gz )
endif()
endmacro()

