project "yaml-cpp"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	_3rd_party_location_dir()
	set_output_dir()

	files
	{
		"include/**.h",
		"src/**.h",
		"src/**.cpp",
	}

	includedirs
	{
		"include",
		"src",
	}

	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
