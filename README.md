# scripts_for_sharing
Little scripts to assist colleagues, as need arises

## txt_to_fasta
If sequences are stored in a txt file names with the sequence name, this script will convert all such files in a directory to .fasta.
NB: Sequences should always be in a sequence format -- e.g. fasta, nexus, etc.

Runs like this: `bash txt_to_fasta.sh ./txt ./fasta` and the `fasta` directory will have the correct format.

To then combine all fasta files to one .fasta, run `cat *.fasta > samples.fasta`