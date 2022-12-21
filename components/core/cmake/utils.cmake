set(SOURCE_FILES_make-dictionaries-readable
        ${CMAKE_CURRENT_SOURCE_DIR}/src/dictionary_utils.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/dictionary_utils.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/DictionaryEntry.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/DictionaryEntry.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/DictionaryReader.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/DictionaryReader.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/FileReader.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/FileReader.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/FileWriter.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/FileWriter.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/LogTypeDictionaryEntry.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/LogTypeDictionaryEntry.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/LogTypeDictionaryReader.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/LogTypeDictionaryReader.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/ParsedMessage.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/ParsedMessage.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/ReaderInterface.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/ReaderInterface.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/Decompressor.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/Decompressor.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/passthrough/Decompressor.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/passthrough/Decompressor.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/zstd/Decompressor.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/streaming_compression/zstd/Decompressor.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/string_utils.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/string_utils.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/Utils.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/Utils.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/utils/make_dictionaries_readable/CommandLineArguments.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/utils/make_dictionaries_readable/CommandLineArguments.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/utils/make_dictionaries_readable/make-dictionaries-readable.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/VariableDictionaryEntry.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/VariableDictionaryEntry.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/VariableDictionaryReader.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/VariableDictionaryReader.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/WriterInterface.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/WriterInterface.hpp
        ${CMAKE_CURRENT_SOURCE_DIR}/submodules/date/include/date/date.h
        )
add_executable(make-dictionaries-readable ${SOURCE_FILES_make-dictionaries-readable})
target_link_libraries(make-dictionaries-readable
        PRIVATE
        Boost::filesystem Boost::iostreams Boost::program_options
        spdlog::spdlog
        ZStd::ZStd
        )
target_compile_features(make-dictionaries-readable
        PRIVATE cxx_std_17
        )
