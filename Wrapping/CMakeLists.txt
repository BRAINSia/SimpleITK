
# remove me
include(${ITK_USE_FILE})

#
# General SWIG configuration
#
if ( WRAP_LUA OR WRAP_PYTHON OR WRAP_JAVA OR WRAP_CSHARP OR WRAP_TCL OR WRAP_R OR WRAP_RUBY )
  find_package ( SWIG 2 REQUIRED )

  include (UseSWIGLocal)

  set_source_files_properties ( SimpleITK.i PROPERTIES CPLUSPLUS ON )

  # make a manual list of dependencies for the Swig.i files
  list( APPEND SWIG_EXTRA_DEPS "${SimpleITK_BINARY_DIR}/Code/BasicFilters/include/SimpleITKBasicFiltersGeneratedHeaders.i"
    "${SimpleITK_BINARY_DIR}/Code/BasicFilters/include/SimpleITKBasicFiltersGeneratedHeaders.h"
    BasicFiltersSourceCode
     )

  # check if uint64_t is the same as unsigned long
  try_compile(SITK_ULONG_SAME_AS_UINT64
    ${SimpleITK_BINARY_DIR}/CMakeTmp
    ${SimpleITK_SOURCE_DIR}/CMake/same_uint64_ulong.cxx )

  # when "-DSWIGWORDSIZE64" is defined SWIG used unsigned long for uint64_t types
  if(${SITK_ULONG_SAME_AS_UINT64} )
    set ( CMAKE_SWIG_GLOBAL_FLAGS "-DSWIGWORDSIZE64" )
  endif()

endif()

#
# lua SWIG configuration
#
if ( WRAP_LUA )
  option ( USE_SYSTEM_LUA "Use a system provided lua" OFF )

  if ( USE_SYSTEM_LUA )
    find_package ( Lua51 REQUIRED )
    include_directories ( ${LUA_INCLUDE_DIR} )
    set ( LUA_LIB ${LUA_LIBRARIES} )
  else()
    set ( LUA_LIB lua5 )
    include_directories ( ${SimpleITK_SOURCE_DIR}/Utilities/lua-5.1.4/src )
  endif()

  # Run swig
  set(CMAKE_SWIG_FLAGS ${CMAKE_SWIG_GLOBAL_FLAGS})
  set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_BINARY_DIR})
  set(SWIG_MODULE_SimpleITKLua_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/Lua.i )
  SWIG_module_initialize ( SimpleITKLua lua )
  SWIG_add_source_to_module ( SimpleITKLua swig_generated_source SimpleITK.i ${SWIG_EXTRA_DEPS} )
  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKLUA_wrap.cxx PROPERTIES COMPILE_FLAGS "-w" )

  add_executable ( SimpleITKLua SimpleITKLuaMain.cxx SimpleITKLUA_wrap.cxx )
  target_link_libraries ( SimpleITKLua ${SimpleITK_LIBRARIES} ${LUA_LIB} )


endif()

#
# python SWIG configuration
#
if ( WRAP_PYTHON )
  find_package ( PythonLibs 2.6 REQUIRED )
  find_package ( PythonInterp 2.6 REQUIRED )
  include_directories ( ${PYTHON_INCLUDE_DIR} ${SimpleITK_SOURCE_DIR}/Wrapping )

  # Run swig
  set(CMAKE_SWIG_FLAGS ${CMAKE_SWIG_GLOBAL_FLAGS} -features autodoc=1 -keyword)
  set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_BINARY_DIR})
  set(SWIG_MODULE_SimpleITK_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/Python.i )
  SWIG_add_module ( SimpleITK python SimpleITK.i SimpleITKPYTHON_wrap.cxx )
  SWIG_link_libraries ( SimpleITK ${SimpleITK_LIBRARIES} ${PYTHON_LIBRARIES})
  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKPYTHON_wrap.cxx PROPERTIES COMPILE_FLAGS "-w")

  # Installation
  set( SIMPLEITK_PYTHON_MODULE_DIR "${SimpleITK_BINARY_DIR}/Wrapping" )
  file(TO_NATIVE_PATH "${SIMPLEITK_PYTHON_MODULE_DIR}" SIMPLEITK_NATIVE_PYTHON_MODULE_DIR )
  get_target_property( SIMPLEITK_BINARY_MODULE ${SWIG_MODULE_SimpleITK_TARGET_NAME} LOCATION )
  file(TO_NATIVE_PATH "${SIMPLEITK_BINARY_MODULE}" SIMPLEITK_NATIVE_BINARY_MODULE )

  include( sitkConfigureFileBuildtime )
  configure_file_buildtime( "${CMAKE_CURRENT_SOURCE_DIR}/PythonPackage/setup.py.in"
    "${CMAKE_CURRENT_BINARY_DIR}/PythonPackage/setup.py" )

  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/PythonPackage/ez_setup.py"
    "${CMAKE_CURRENT_BINARY_DIR}/PythonPackage/ez_setup.py"
    COPYONLY )

  add_dependencies( ${SWIG_MODULE_SimpleITK_TARGET_NAME} ConfigureFileBuildtime )

  if ( BUILD_TESTING )

    set( PythonVirtualenvHome ${SimpleITK_BINARY_DIR}/Testing/Installation/PythonVirtualenv )

    set( ORIGINAL_PYTHON_EXECUTABLE ${PYTHON_EXECUTABLE} )

    # virtualenv places the python executable in different
    # locations. Also note than on windows installations where python is
    # installed only for a single user the may be a missing dll issue.
    if( WIN32 )
      set( PYTHON_EXECUTABLE "${PythonVirtualenvHome}/Scripts/python" )
    else( )
      set( PYTHON_EXECUTABLE "${PythonVirtualenvHome}/bin/python" )
    endif()

    add_custom_command( TARGET ${SWIG_MODULE_SimpleITK_TARGET_NAME}
      POST_BUILD
      COMMAND ${ORIGINAL_PYTHON_EXECUTABLE}
        ${SimpleITK_SOURCE_DIR}/Utilities/virtualenv/virtualenv.py
        --python=${ORIGINAL_PYTHON_EXECUTABLE}
        --distribute
        --clear
      ${PythonVirtualenvHome}
      COMMAND ${CMAKE_COMMAND} -E touch "${CMAKE_CURRENT_BINARY_DIR}/__init__.py"
      COMMAND ${PYTHON_EXECUTABLE} "${CMAKE_CURRENT_BINARY_DIR}/PythonPackage/setup.py" install
      COMMENT "Installing python module to the virtualenv" )

  endif()


endif()

#
# ruby SWIG configuration
#
if ( WRAP_RUBY )
  find_package ( Ruby REQUIRED )
  include_directories ( ${RUBY_INCLUDE_DIRS} )

  # Run swig
  set(CMAKE_SWIG_FLAGS -autorename -module simpleitk ${CMAKE_SWIG_GLOBAL_FLAGS})
  set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_BINARY_DIR})
  set(SWIG_MODULE_simpleitk_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
     ${CMAKE_CURRENT_SOURCE_DIR}/Ruby.i)

  SWIG_add_module ( simpleitk ruby SimpleITK.i SimpleITKRUBY_wrap.cxx )
  SWIG_link_libraries ( simpleitk ${SimpleITK_LIBRARIES} ${RUBY_LIBRARY})
  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKRUBY_wrap.cxx  PROPERTIES COMPILE_FLAGS "-w")

endif()

#
# JAVA SWIG configuration
#
if ( WRAP_JAVA )
  find_package ( Java REQUIRED )
  find_package ( JNI REQUIRED )
  include_directories ( ${JAVA_INCLUDE_PATH} ${JNI_INCLUDE_DIRS} )

  FIND_PROGRAM(Java_JAVADOC_EXECUTABLE
    NAMES javadoc
    HINTS ${_JAVA_HINTS}
    PATHS ${_JAVA_PATHS}
    )

  # Make sure the nested directory structure exists
  set(JAVA_SOURCE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/)
  set(JAVA_BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/build)
  file(MAKE_DIRECTORY ${JAVA_SOURCE_DIRECTORY})
  file(MAKE_DIRECTORY ${JAVA_BINARY_DIRECTORY})

  # Nicely write the bridge code in org/itk/simple
  set(CMAKE_SWIG_OUTDIR ${JAVA_SOURCE_DIRECTORY}/org/itk/simple/)
  set(CMAKE_SWIG_FLAGS -package "org.itk.simple" ${CMAKE_SWIG_GLOBAL_FLAGS})
  set(SWIG_MODULE_SimpleITKJava_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/Java.i )
  SWIG_add_module ( SimpleITKJava java SimpleITK.i SimpleITKJAVA_wrap.cxx)
  SWIG_link_libraries(SimpleITKJava ${SimpleITK_LIBRARIES})
  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKJAVA_wrap.cxx  PROPERTIES COMPILE_FLAGS "-w")

  # Add target for org.itk.simple.jar
  add_custom_target(org_itk_simple_jar ALL DEPENDS ${JAR_FILE})
  set(JAVA_SOURCE_CODE ${JAVA_SOURCE_DIRECTORY}/org/itk/simple/*.java)

  # Add custom command and target to compile the generated files and put them in a jar file
  # Make sure the commands depend on the output library from SWIG
  add_custom_command(
    OUTPUT ${JAR_FILE}
    COMMENT "Creating jar file..."
    COMMAND ${Java_JAVAC_EXECUTABLE} -d ${JAVA_BINARY_DIRECTORY} ${JAVA_SOURCE_CODE}
    COMMAND ${Java_JAR_EXECUTABLE} cf ${CMAKE_CURRENT_BINARY_DIR}/${JAR_FILE} -C ${JAVA_BINARY_DIRECTORY} org
    COMMAND ${Java_JAVADOC_EXECUTABLE} -quiet -d ${JAVA_BINARY_DIRECTORY}/javadoc -sourcepath ${JAVA_SOURCE_DIRECTORY} org.itk.simple
    COMMAND ${Java_JAR_EXECUTABLE} cf ${CMAKE_CURRENT_BINARY_DIR}/${JAVADOC_FILE} -C ${JAVA_BINARY_DIRECTORY}/javadoc org
    COMMAND ${Java_JAR_EXECUTABLE} cf ${CMAKE_CURRENT_BINARY_DIR}/${JAVA_SOURCE_FILE} org
    DEPENDS ${SWIG_MODULE_SimpleITKJava_TARGET_NAME}
    )

  # Get the location of the extension directory
  string(REGEX REPLACE "include"  "jre/lib/ext" JAVA_EXTENSION_DIR ${JAVA_INCLUDE_PATH} )

  # TODO: add new target to install simpleitk java
  # Add the install target
  # install(FILES ${CMAKE_CURRENT_BINARY_DIR}/${JAR_FILE} DESTINATION ${JAVA_EXTENSION_DIR})

endif()

#
# C# SWIG configuration
#
if ( WRAP_CSHARP )

  # Find C#
  find_package( CSharp REQUIRED )
  include( ${CSHARP_USE_FILE} )

  # Make sure the nested directory structure exists
  set(CSHARP_SOURCE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/CSharpSources CACHE INTERNAL "")
  set(CSHARP_BINARY_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/CSharpBinaries CACHE INTERNAL "")
  file(MAKE_DIRECTORY ${CSHARP_SOURCE_DIRECTORY})
  file(MAKE_DIRECTORY ${CSHARP_BINARY_DIRECTORY})

  # Create swig target
  set(CMAKE_SWIG_OUTDIR ${CSHARP_SOURCE_DIRECTORY})
  if ( UNIX )
    set(CMAKE_SWIG_FLAGS -dllimport \"libSimpleITKCSharpNative\")
  else (WIN32 )
    set(CMAKE_SWIG_FLAGS -dllimport \"SimpleITKCSharpNative\")
  endif ( UNIX )
  set(CMAKE_SWIG_FLAGS -namespace \"itk.simple\" ${CMAKE_SWIG_GLOBAL_FLAGS} ${CMAKE_SWIG_FLAGS})
  set(SWIG_MODULE_SimpleITKCSharpNative_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/CSharp.i
    ${CMAKE_CURRENT_SOURCE_DIR}/CSharpTypemapHelper.i )
  swig_add_module(SimpleITKCSharpNative csharp SimpleITK.i)
  swig_link_libraries(SimpleITKCSharpNative ${SimpleITK_LIBRARIES})
  set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CSHARP_BINARY_DIRECTORY})
  if ( UNIX )
    set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME} PROPERTIES PREFIX "lib")
    set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME} PROPERTIES SUFFIX ".so")
  else ( WIN32 )
    set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME} PROPERTIES PREFIX "")
    set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME} PROPERTIES SUFFIX ".dll")
    foreach ( CMAKE_CONFIGURATION_TYPE ${CMAKE_CONFIGURATION_TYPES} )
      string(TOUPPER ${CMAKE_CONFIGURATION_TYPE} CMAKE_CONFIGURATION_TYPE)
      set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME}
        PROPERTIES LIBRARY_OUTPUT_DIRECTORY_${CMAKE_CONFIGURATION_TYPE} "${CSHARP_BINARY_DIRECTORY}")
      set_target_properties(${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME}
        PROPERTIES RUNTIME_OUTPUT_DIRECTORY_${CMAKE_CONFIGURATION_TYPE} "${CSHARP_BINARY_DIRECTORY}")
    endforeach( )
  endif( UNIX )

  # Configure AssemblyInfo.cs
  configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/AssemblyInfo.cs.in
    ${CSHARP_SOURCE_DIRECTORY}/AssemblyInfo.cs
    @ONLY
  )

  # Add managed wrapper
  csharp_add_library(
    SimpleITKCSharpManaged
    ${CSHARP_SOURCE_DIRECTORY}/*.cs
  )
  add_dependencies(SimpleITKCSharpManaged ${SWIG_MODULE_SimpleITKCSharpNative_TARGET_NAME})

endif()

#
# TCL SWIG configuration
#
if ( WRAP_TCL )
  find_package ( TCL REQUIRED )
  include_directories ( ${TCL_INCLUDE_PATH} )

  # Run swig
  set(CMAKE_SWIG_FLAGS "-nosafe" ${CMAKE_SWIG_GLOBAL_FLAGS})
  set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_BINARY_DIR})
  set(SWIG_MODULE_SimpleITKTcl_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/Tcl.i )
#  SWIG_add_module ( SimpleITKTcl tcl SimpleITK.i SimpleITKTCL_wrap.cxx )
#  SWIG_link_libraries ( SimpleITKTcl ${SimpleITK_LIBRARIES} ${TCL_LIBRARY})
#  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKTCL_wrap.cxx  PROPERTIES COMPILE_FLAGS "-w")
#  add_executable ( SimpleITKTclsh SimpleITKTCL_wrap.cxx )
#  target_link_libraries ( SimpleITKTclsh ${SimpleITK_LIBRARIES} ${TCL_LIBRARY})

  SWIG_module_initialize ( SimpleITKTCL tcl )
  SWIG_add_source_to_module ( SimpleITKTCL swig_generated_source SimpleITK.i ${SWIG_EXTRA_DEPS} )
  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKTCL_wrap.cxx PROPERTIES COMPILE_FLAGS "-w" )
  add_executable ( SimpleITKTclsh SimpleITKTCL_wrap.cxx )
  target_link_libraries ( SimpleITKTclsh ${SimpleITK_LIBRARIES} ${TCL_LIBRARY} )


endif()

#
# R SWIG configuration
#
if ( WRAP_R )
  find_package ( R REQUIRED )
  include_directories ( ${R_INCLUDE_DIR} )

  # Run swig
  set(CMAKE_SWIG_FLAGS ${CMAKE_SWIG_GLOBAL_FLAGS})
  set(CMAKE_SWIG_OUTDIR ${CMAKE_CURRENT_BINARY_DIR})
  set(SWIG_MODULE_SimpleITK_EXTRA_DEPS ${SWIG_EXTRA_DEPS}
    ${CMAKE_CURRENT_SOURCE_DIR}/R.i )
  SWIG_add_module ( SimpleITK r SimpleITK.i SimpleITKR_wrap.cxx )
  SWIG_link_libraries ( SimpleITK ${SimpleITK_LIBRARIES} )

  # on some platforms the r libraries are not required at link time...
  if(R_LIBRARIES)
    SWIG_link_libraries ( SimpleITK ${R_LIBRARIES} )
  endif()

  set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/SimpleITKR_wrap.cxx PROPERTIES COMPILE_FLAGS "-w")

  get_target_property( SIMPLEITKR_BINARY_MODULE ${SWIG_MODULE_SimpleITK_TARGET_NAME} LOCATION )
  file(TO_NATIVE_PATH "${SIMPLEITKR_BINARY_MODULE}" SIMPLEITKR_NATIVE_BINARY_MODULE )


  add_dependencies( ${SWIG_MODULE_SimpleITK_TARGET_NAME} ConfigureFileBuildtime )

  # set the output directory for the R library to the binary packaging location
  set_target_properties( ${SWIG_MODULE_SimpleITK_TARGET_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK/src/)

  # copy the R files a binary package
  add_custom_command( TARGET ${SWIG_MODULE_SimpleITK_TARGET_NAME}
      PRE_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_directory ${SimpleITK_SOURCE_DIR}/Wrapping/Rpackaging ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging
      COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK/data/
  )
  add_custom_command( TARGET ${SWIG_MODULE_SimpleITK_TARGET_NAME}
      POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/RLib
      COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_BINARY_DIR}/SimpleITK.R ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK/R/
      # copy sample images
      COMMAND ${CMAKE_COMMAND} -E copy ${SimpleITK_SOURCE_DIR}/Testing/Data/Input/cthead1.png  ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK/data/
      COMMAND ${CMAKE_COMMAND} -E copy ${SimpleITK_SOURCE_DIR}/Testing/Data/Input/cthead1-Float.mha  ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK/data/
      # install for running tests and create binary package
      COMMAND ${R_COMMAND} CMD INSTALL --build ${CMAKE_CURRENT_BINARY_DIR}/Rpackaging/SimpleITK --library=${CMAKE_CURRENT_BINARY_DIR}/RLib

      COMMENT "Installing R package for testing and building binary version for distribution"
       )

endif()

# Packaging for distribution
add_subdirectory(dist)
