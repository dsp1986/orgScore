#!/usr/bin/env python3
 
import pythonosc

receivers = ["sf1", "sf2"] 
channels=[]
d = dispatcher.Dispatcher()


def osc_send (receive,value):
  msg = osc_message_builder.OscMessageBuilder(address = channel)
  msg.add_arg(value, "i")
  msg = msg.build()
  client.send(msg)
    
def add(name):
  channels.append(name)
  d.map("/%s"%name, send_to_listeners)
 
def send_to_listeners(addr, value)
  for i in receivers:
    osc_send(i,value)
    
if __name__ == "__main__":
   
   
  
  
  
  