Get Android SDK
==============

In order to build patchrom project, you must have [Android SDK](http://developer.android.com/sdk/installing.html) installed and add the sdk tools and platform-tools to PATH.

    $ vim .bashrc

Add this line to ```.bashrc```

    export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/android-sdk/platform-tools


Setting Up Initial Patchrom
============================

To get started with patchrom, you'll need to get familiar with [git and repo](http://source.android.com/source/using-repo.html).

To initialize your local repository using the patchrom trees, use a command like this:

    $ mkdir -p patchrom

    $ cd patchrom

    $ repo init -u git://github.com/abielzuliom/MIUI_patchrom.git -b kitkat -m sony_taoshan.xml


Then to sync up:

    $ repo sync


Build
======

    $ cd /your/patchrom/dir

    $ source build/envsetup.sh

    $ cd taoshan

Put any KitKat ROM here (CM/FXP/AOSP is more recommended) and rename it to ```stockrom.zip```, otherwise it will never work!

    $ make workspace

    $ make firstpatch

    $ make fullota
