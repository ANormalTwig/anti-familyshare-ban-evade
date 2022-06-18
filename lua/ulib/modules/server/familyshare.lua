hook.Add("PlayerAuthed", "KickBannedFamilyShare", function(ply, accSteamID)
  local ownerSteamID = util.SteamIDFrom64(ply:OwnerSteamID64())
  local msg = ULib.getBanMessage(ownerSteamID)
  if msg then
    game.KickID(accSteamID, "[The owner of this game copy is banned!]\n" .. msg)
  end
end)