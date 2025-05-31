local nekitextinit=init
function nekiReplaceTags(text, tags)  
    sb.logInfo("Line: %s", text)
    sb.logInfo("Tags: %s", tags)  
  local str = text
  
  for key, x in pairs(tags) do
      sb.logInfo("Key: %s", key)
      sb.logInfo("Value: %s", x)   
    str = str:gsub("<" ..key.. ">",x);
      sb.logInfo("Test: %s", str)
  end
  return str
end

function init(...)
    if nekitextinit then
        nekitextinit(...)
    end
    sb.replaceTags=nekiReplaceTags
end
