function Wave(creep, numTotal, numPerSpawn, bonusEndGold, bountyGold)
	local newWave = {}
  newWave.IsBoss = false
	newWave.creep = creep
	newWave.numTotal = numTotal
	newWave.numPerSpawn = numPerSpawn
  newWave.bonusEndGold = bonusEndGold
  newWave.lifePenalty = 1
  newWave.bountyGold = bountyGold

	return newWave
end

function Boss(creep, numTotal, numPerSpawn, bonusEndGold, lifePenalty)
  local newWave = {}
  newWave.IsBoss = true
  newWave.creep = creep
  newWave.numTotal = numTotal
  newWave.numPerSpawn = numPerSpawn
  newWave.bonusEndGold = bonusEndGold
  newWave.bossMsg = bossMsg
  newWave.lifePenalty = lifePenalty
  newWave.bigLeadTax = 5

  return newWave
end

waveTable = {}

waveTable[1] 	  = Wave("creep_boar", 18, 3, 6, 0.25)
waveTable[2] 	  = Wave("creep_donkey", 21, 3, 6, 0.25)