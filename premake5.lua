workspace "HW3D"
	configurations {
		"Debug",
		"Release"
	}

	platforms {
		"x86",
		"x86_64"
	}

	filter{"platforms:x86"}
		architecture "x86"

	filter{"platforms:x86_64"}
		architecture "x64"
	
	filter{}
	startproject "HW3D"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

include "hw3d"

newaction {
	trigger = "clean",
	description = "Remove all binaries, intermediate binaries and vs files",
	execute = function()
		print("Remove binaries")
		os.rmdir("./bin")
	
		print("Remove intermediate binaries")
		os.rmdir("./bin-int")

		print("Remove vs files")
		os.rmdir("./.vs")
		os.remove("*.sln")
		os.remove("**.vsxprj")
		os.remove("**.vsxprj.filters")
		os.remove("**.vsxprj.users")

		print("DONE!")
	end
}