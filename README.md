# debugger-pry

This gem adds a `pry` command to the [debugger](https://github.com/cldwalker/debugger) gem enabling you to bring up
a pry console during your session. It is similar to debugger's built-in `irb` command.

To see it in action, run `ruby examples/foo.rb` and type "pry" at the debug prompt.

To use it in a project, add this to your Gemfile:

    gem "debugger-pry", :require => "debugger/pry"

For more information on pry, read [this article](http://banisterfiend.wordpress.com/2011/01/27/turning-irb-on-its-head-with-pry/).

Example
-------

```
(rdb:1) help
ruby-debug help v1.1.3
Type 'help <command-name>' for help on a specific command

Available commands:
backtrace  delete   enable  help  list    pry     restart  source  undisplay
break      disable  eval    info  method  ps      save     step    up       
catch      display  exit    irb   next    putl    set      thread  var      
condition  down     finish  jump  p       quit    show     tmate   where    
continue   edit     frame   kill  pp      reload  skip     trace 

(rdb:1) pry

Frame number: 0/11

From: foo.rb @ line 14 :

     9:   end
    10: end
    11: 
    12: foo = Foo.new(5)
    13: debugger
 => 14: foo.bar += 10

[1] (pry) main: 0> 
```
Credits
-------

Based on the work of Andrew O'Brien
