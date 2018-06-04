# Simple Data Encryption

This is a simple rails app to demonstrate how to use the gem 'attr_encrypted'

When setting the attr_encrypted secret key, best to use **32 bytes or longer** character, trust me.

Lets check the values in the database

1. before the implementation

```sh
$ git checkout fbcc0f6cee6

$ rake db:migrate

$ rails console

$ [Inside rails console]

  >> Planet.inspect

  >> Planet.all.sample

```
**Note**: All values are as saved from your frontend.


2. after the implementation

```sh
$ git checkout 9842712af55c75b

$ rake db:migrate

$ rails console

$ [Inside rails console]

  >> Planet.inspect

  >> Planet.all.sample

```
**Note**: All values are shown as saved except the `encrypted_` column which was not save.

The question is this? Which/WHose encrypted values is stored here? The answer is the last part of the `encrypted_` part.

For us, this will be *`name`*.



**Next Step.**

1. Remove the created `encrypted_` column

2. Rename all the columns we want to encrypt to start with `encrypted_`

```sh
$ git checkout 0b23c404ddd845c

$ rake db:migrate

$ rake db:seed

$ [Inside rails console]

  >> Planet.inspect

  >> Planet.all.sample

  >> Planet.all.sample.name
```
**Note**: The result will not have `name` column though we are saving its value.

