

all:
	export LUA_PATH="?.lua;features/?.lua;lemur-master/lib/?.lua;lemur-master/lib/instances/?.lua;lemur-master/lib/functions/?.lua;lemur-master/lib/types/?.lua;;" && \
		lua lua-amalg-master/src/amalg.lua \
			-s init.lua \
			VoxModel \
			BaseInstance \
			assign \
			InstanceProperty \
			Signal \
			typeof \
			typeKey \
			Color3 \
			Vector3 \
			Vector2 \
			> compiled.lua
	lua compiled.lua