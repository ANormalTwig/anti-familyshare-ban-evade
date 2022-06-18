hook.Add("PlayerAuthed", "KickBannedFamilyShare", function(ply, accSteamID)
  local ownerSteamID = util.SteamIDFrom64(ply:OwnerSteamID64())
  if ownerSteamID == accSteamID then return end

  local msg = ULib.getBanMessage(ownerSteamID)
  if msg then
    ULib.addBan(ownerSteamID, 0, "Ban Evading")
    ULib.addBan(accSteamID,   0, "Ban Evading")
  end
end)