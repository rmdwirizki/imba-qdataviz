class Connect
  def fetch url
    const res = await window.fetch url
    try 
      return await res.json
    catch e 
      return {}

export var Connect = Connect.new