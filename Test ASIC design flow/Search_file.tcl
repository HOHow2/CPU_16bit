#!/usr/bin/tclsh


if {[llength $argv] != 1} {
        puts "Usage: search_file <file_name>"
        exit 1
}

set filename [lindex $argv 0]

set root_direc "/home/hong"

set found 0


proc search_file {directory filename} {

        # take all folders in the current folder
        set items [glob -nocomplain $directory/*]

        # duyet tat ca cac muc trong thu muc
        foreach item $items {
                if {[file isdirectory $item]} {
                        search_file $item $filename
                } else {
                        if {[string equal [file tail $item] $filename]} {
                                puts "successfully check the file: $filename"
                                puts "the path of that file: $item\n"
                                global found
                                set found 1
                        }

                }
        }

}

search_file $root_direc $filename
if {$found == 0} {
        puts "$filename khong ton tai."
        puts "Hay kiem tra lai ten file."
