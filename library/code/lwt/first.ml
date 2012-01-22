

#require "lwt";;
#require "lwt.unix";;


let ic,oc = Lwt_io.pipe ()

let t = Lwt_io.read_char ic

let _ = begin
  Lwt_io.write_char oc 'a';
  Lwt.state t
end 
