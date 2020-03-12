The idea here is that this should be the bare minimum required to have a sane
instance on a freshly commissioned server.

# Rules

1. No plugin managers. All plugins and colorschemes should be contained within
   this repository

2. No dependencies on outside software outside of a POSIX operating system. No
   cURL, no rsync, etc.

3. Any filesystem locations should be resolvable within the script. No absolute
   locations outside of what can be expected by the POSIX standard.
