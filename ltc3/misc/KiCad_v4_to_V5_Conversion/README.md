# KiCad v4 to V5 Conversion

This directory contains sed scripts used to convert LTC3's KiCad design
files from v4 to v5.

Conversion is a two-part process:

1. Create a complete sed script.  Start with the "base" sed script
   (suitable for any eeschema v4 files ) by appending rules for the
   conversion of local symbol names::

    cp eeschema_v4_to_v5_base.sed eeschema_v4_to_v5.sed
    (cd ../../kicad/libs/symbols/ && grep \$CMP *dcm) | sed -f make_sed_rules_for_local_symbols.sed >> eeschema_v4_to_v5.sed

2. Convert individual eeschema ``*.sch`` files::

    sed -f eeschema_v4_to_v5.sed $YOUR_EESCHEMA_FILE_HERE > $YOUR_EESCHEMA_FILE_HERE.v5

The resulting output is totally guaranteed to probably not be perfect,
usually because a previously-used stock symbol has changed slightly in
size, default orientation, etc.  Some post-conversion assembly may be
required.

Also note that the above example commands may well need to be adjusted
to suit your working environment ($PWD, etc.)
