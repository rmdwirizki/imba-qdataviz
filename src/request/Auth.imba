class Auth
  prop session default: {
    user: null
  }

  def check
    return (@session:user == null) ? false : true

  def logout
    window:localStorage:_token = null
    @session:user = null

    Imba.commit

  def login user
    window:localStorage:_token = user:token
    @session:user = user

    Imba.commit

  def tryLogin
    return Promise.new do |resolve|
      return window.setTimeout(&, 1000) do resolve(true)
  
export var Auth = Auth.new

# Make sure Auth loaded first
import {Connect} from './Connect.imba'