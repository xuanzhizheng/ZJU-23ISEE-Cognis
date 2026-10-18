#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "websockets" for configuration ""
set_property(TARGET websockets APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(websockets PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libwebsockets.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS websockets )
list(APPEND _IMPORT_CHECK_FILES_FOR_websockets "${_IMPORT_PREFIX}/lib/libwebsockets.a" )

# Import target "websockets_shared" for configuration ""
set_property(TARGET websockets_shared APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(websockets_shared PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libwebsockets.dll.a"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/cygwebsockets-19.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS websockets_shared )
list(APPEND _IMPORT_CHECK_FILES_FOR_websockets_shared "${_IMPORT_PREFIX}/lib/libwebsockets.dll.a" "${_IMPORT_PREFIX}/bin/cygwebsockets-19.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
