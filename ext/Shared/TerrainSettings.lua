local Roads = false

Events:Subscribe("Partition:Loaded", function(partition)
	if partition == nil then
		return
	end

	local instances = partition.instances
	for _, instance in pairs(instances) do
		if instance ~= nil then
			-- Remove depthtree preventing craters on roads and other areas.
			if instance:Is("TerrainLayerType") then
				partition:RemoveInstance(instance)
				print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
			end
		end
	end
end)
