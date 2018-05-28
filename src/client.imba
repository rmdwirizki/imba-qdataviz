import {Router} from 'imba-router'

import {Auth} from './request/Auth.imba'

import {Header} from './layout/Header.imba'
import {Home} from './pages/Home.imba'
import {Login} from './pages/Login.imba'
import {Form} from './pages/Form.imba'
import {Dashboard} from './pages/Dashboard.imba'
import {Footer} from './layout/Footer.imba'

extend tag element
  def asset resource=''
    return window:location:pathname + 'build/' + resource

tag App 
  prop isAuthComplete default: false

  def build
    setRouter Router.new {mode: 'hash'}
    const auth = await Auth.tryLogin
    if !auth
      router.go '/'
    
    @isAuthComplete = true
    Imba.commit

  def render
    <self>
      if !isAuthComplete
        <object.self-centered data=(asset('/loader.svg')) type="image/svg+xml">
      else
        <Header>
        <Home route='/'>
        <Login route='/login'>
        <Form route='/form'>
        <Dashboard route='/dashboard'>
        <Footer>

Imba.mount <App>