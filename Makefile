

all:
	export LUA_PATH="?.lua;lemur-master/lib/?.lua;lemur-master/lib/instances/?.lua;lemur-master/lib/functions/?.lua;;" && \
		lua lua-amalg-master/src/amalg.lua \
			-s boop.lua \
			BaseInstance \
			assign \
			InstanceProperty \
			Signal \
			typeof \
			typeKey \
			> compiled.lua
	lua compiled.lua