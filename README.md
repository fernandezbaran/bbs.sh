# bbs.sh
Simple bash script for searching and connecting with several bbs listed on telnetbbsguide.com , requieres ztelnet and zssh packages.

# USAGE

First argument constitutues search term, will display a list of matches.

Example: it will show all bbs with "argentina" as a valid search term

    ./bbs.sh argentina

        https://www.telnetbbsguide.com/bbs/grupo-commodore-argentina/
        https://www.telnetbbsguide.com/bbs/zooropa-bbs/
        https://www.telnetbbsguide.com/bbs/lu8fjh-image-bbs/
        https://www.telnetbbsguide.com/bbs/reisub-bbs/
        https://www.telnetbbsguide.com/bbs/momia-bbs/
        https://www.telnetbbsguide.com/bbs/vault-bbs/
        https://www.telnetbbsguide.com/bbs/radio-club-moron/

Second argument defines a selected option, must contain a text fragment of the desired objetive 

Example: it will connect to https://www.telnetbbsguide.com/bbs/radio-club-moron/

      ./bbs.sh argentina moron
