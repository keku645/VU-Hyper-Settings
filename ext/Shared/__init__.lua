require("__shared/DebrisClusterData")
require("__shared/TerrainSettings")

Events:Subscribe("Partition:Loaded", function(partition)
	-- Reads all the instances in each partition
	for _, instance in pairs(partition.instances) do
		if instance == nil then
			break
		end

		--------------
		--- ASSETS ---
		--------------

		if instance.typeInfo.name == "MeshLodGroup" then
			local thisInstance = MeshLodGroup(instance)
			thisInstance:MakeWritable()
			thisInstance.lod1Distance = 99999999
			thisInstance.cullScreenArea = 0
			thisInstance.shadowDistance = 500
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "BangerEntityData" then
			local thisInstance = BangerEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.timeToLive = 99999999
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "DebrisClusterData" then
			local thisInstance = DebrisClusterData(instance)
			thisInstance:MakeWritable()
			thisInstance.clusterLifetime = 999999
			thisInstance.maxActivePartsCount = 10000
			--thisInstance.killPartsOnCollision = false
			thisInstance.deactivatePartsOnSleep = false
			thisInstance.onPartCollisionEnable = true
			thisInstance.spawnExplosionOnFirstImpactOnly = false
			thisInstance.noCollision = false
			thisInstance.partialDestruction = false
			thisInstance.clientSideOnly = true -- Turning this false might affect server perfomance.
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "VegetationTreeEntityData" then
			local thisInstance = VegetationTreeEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.shadowLODOffset = 10
			thisInstance.forceFullSim = true
			thisInstance.partsTimeToLive = 999999
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "RigidMeshAsset" then
			local thisInstance = RigidMeshAsset(instance)
			thisInstance:MakeWritable()
			thisInstance.cullScale = 4
			thisInstance.occluderMeshEnable = false
			thisInstance.occluderHighPriority = false
			thisInstance.lodScale = 10
			thisInstance.streamingEnable = false
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "CompositeMeshAsset" then
			local thisInstance = CompositeMeshAsset(instance)
			thisInstance:MakeWritable()
			thisInstance.cullScale = 4
			thisInstance.occluderMeshEnable = false
			thisInstance.occluderHighPriority = false
			thisInstance.lodScale = 10
			thisInstance.streamingEnable = false
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "ReferenceObjectData" then
			local thisInstance = ReferenceObjectData(instance)
			thisInstance:MakeWritable()
			thisInstance.castSunShadowEnable = true
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		----------
		--- FX ---
		----------

		if instance.typeInfo.name == "EffectReferenceObjectData" then
			local thisInstance = EffectReferenceObjectData(instance)
			thisInstance:MakeWritable()
			thisInstance.castSunShadowEnable = true
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "EffectEntityData" then
			local thisInstance = EffectEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.cullDistance = 0
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "EmitterEntityData" then
			local thisInstance = EmitterEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.cullDistance = 0
			thisInstance.spawnProbability = 1
			thisInstance.maxInstanceCount = 1024
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "EmitterTemplateData" then
			local thisInstance = EmitterTemplateData(instance)
			thisInstance:MakeWritable()
			thisInstance.forceFullRes = true
			thisInstance.forceNiceSorting = true
			thisInstance.visibleAfterDistance = -1
			thisInstance.particleCullingFactor = 0
			thisInstance.maxSpawnDistance = 100000
			thisInstance.meshCullingDistance = 0
			thisInstance.transparencySunShadowEnable = false
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "UpdateTransparencyData" then
			local thisInstance = UpdateTransparencyData(instance)
			thisInstance:MakeWritable()
			thisInstance.cullThreshold = 0
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "FogComponentData" then
			local thisInstance = FogComponentData(instance)
			thisInstance:MakeWritable()
			thisInstance.transparencyFadeStart = 999999
			thisInstance.transparencyFadeEnd = 999999
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		----------------
		--- LIGHTING ---
		----------------

		if instance.typeInfo.name == "OutdoorLightComponentData" then
			local thisInstance = OutdoorLightComponentData(instance)
			thisInstance:MakeWritable()
			thisInstance.cloudShadowEnable = true
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "PointLightEntityData" then
			local thisInstance = PointLightEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.enlightenEnable = true
			thisInstance.specularEnable = true
			thisInstance.visible = true
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "SpotLightEntityData" then
			local thisInstance = SpotLightEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.enlightenEnable = true
			thisInstance.specularEnable = true
			thisInstance.visible = true
			--thisInstance.shape = 1
			thisInstance.castShadowsMinLevel = 2 -- QualityLevel_Ultra --
			thisInstance.castShadowsEnable = true
			-- thisInstance.frustumFov = 40
			-- thisInstance.orthoWidth = 5
			--thisInstance.orthoHeight = 5
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		--------------
		--- DECALS ---
		--------------

		if instance.typeInfo.name == "DecalEntityData" then
			local thisInstance = DecalEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.projected = true
			thisInstance.sortingPriority = 0
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		-----------------------------
		--- CHARACTERS & VEHICLES ---
		-----------------------------

		if instance.typeInfo.name == "SkinnedMeshAsset" then
			local thisInstance = SkinnedMeshAsset(instance)
			thisInstance:MakeWritable()
			thisInstance.enlightenType = 1
			thisInstance.cullScale = 4
			thisInstance.lodScale = 10
			thisInstance.streamingEnable = false
			--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		--------------
		--- CAMERA ---
		--------------

		if instance.typeInfo.name == "CameraParamsComponentData" then
			local thisInstance = CameraParamsComponentData(instance)
			thisInstance:MakeWritable()
			thisInstance.viewDistance = -1
			thisInstance.nearPlane = -1
			thisInstance.sunShadowmapViewDistance = 800
			-- print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		if instance.typeInfo.name == "StaticModelGroupEntityData" then
			local thisInstance = StaticModelGroupEntityData(instance)
			thisInstance:MakeWritable()
			thisInstance.enabled = false
			thisInstance.memberDatas:clear()
			-- print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
		end

		-----------------
		--- OCCLUDERS ---
		-----------------
		--[[  if SharedUtils:GetLevelName() ~= 'Levels/MP_001/MP_001' and instance.typeInfo.name == 'OccluderVolumeEntityData' then

                local thisInstance = OccluderVolumeEntityData(instance)
                thisInstance:MakeWritable()
                local occluder = LinearTransform(
                    Vec3(0, 0, 0),
                    Vec3(0, 0, 0),
                    Vec3(0,0,0),
                    Vec3(0, -5000, 0))
                thisInstance.transform = occluder
                --print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
            end]]
	end
end)

-- FlashLight 1P
ResourceManager:RegisterInstanceLoadHandler(
	Guid("83E2B938-E678-11DF-A7B3-CBA49C34928F"),
	Guid("995E49EE-8914-4AFD-8EF5-59125CA8F9CD"),
	function(instance)
		local thisInstance = SpotLightEntityData(instance)
		thisInstance:MakeWritable()
		thisInstance.radius = 45
		thisInstance.coneOuterAngle = 45
	end
)

-- FlashLight 3P
ResourceManager:RegisterInstanceLoadHandler(
	Guid("65A5BFD9-028A-4D4F-8B89-3A60B2E06F83"),
	Guid("5FBA51D6-059F-4284-B5BB-6E20F145C064"),
	function(instance)
		local thisInstance = SpotLightEntityData(instance)
		thisInstance:MakeWritable()
		thisInstance.radius = 45
		thisInstance.coneOuterAngle = 45
	end
)

-- character 1p
ResourceManager:RegisterInstanceLoadHandler(
	Guid("F256E142-C9D8-4BFE-985B-3960B9E9D189"),
	Guid("FB22D6C6-2EBF-4799-974C-0ADAD3C3E60E"),
	function(instance)
		local thisInstance = SoldierFootplantEffectComponentData(instance)
		thisInstance:MakeWritable()
		thisInstance.fullFootplantingEnabled = true
		thisInstance.lodDistance = -1
		--print("YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
	end
)

-- Manually remove Occluders from WorldPartReferenceObjectData

-- XP2_Skybar
ResourceManager:RegisterInstanceLoadHandler(
	Guid("2DF41167-0BAB-11E1-AA4E-EFBA5D767A10"),
	Guid("EE6DCBCB-5EF3-40C6-B83D-83E8D5562893"),
	function(instance)
		local thisInstance = WorldPartReferenceObjectData(instance)
		thisInstance:MakeWritable()
		thisInstance.excluded = true
	end
)
