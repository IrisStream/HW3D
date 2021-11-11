project "HW3D"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir("../bin/" .. outputdir .. "/%{prj.name}")
	objdir("../bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"src/**.cpp",
		"include/**.h"
	}

	includedirs {
		"include"
	}

	filter{"configurations:Debug"}
		buildoptions "/MTd"
		runtime "Debug"
		symbols "On"
		defines {
			"DEBUG"
		}

	filter{"configurations:Release"}
		buildoptions "/MT"
		runtime "Release"
		optimize "On"
		defines {
			"NDEBUG"
		}
