local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerStorage = game:GetService("ServerStorage")

local spawnEvent = ReplicatedStorage:WaitForChild("SpawnMonsterEvent")
local monsterTemplate = ServerStorage:WaitForChild("잡초몬스터")
local spawnPoint = workspace:WaitForChild("MonsterSpawnPoint")

spawnEvent.OnServerEvent:Connect(function(player)
	local monster = monsterTemplate:Clone()
	monster.Parent = workspace

	if monster.PrimaryPart then
		monster:SetPrimaryPartCFrame(spawnPoint.CFrame)
	else
		warn("몬스터 PrimaryPart 설정 안됨")
	end
end)
