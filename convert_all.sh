# Convert all files in Evernote backup folder to Markdown

cd /Users/dalehumby/Google\ Drive/My\ Drive/Backups/Evernote/
#mkdir -p markdown/Finances
mkdir -p markdown/

#for filename in Finances/*.enex
for filename in *.enex
do
  dir="markdown/${filename%%.*}"
  mkdir -p "$dir"
  echo "$dir"
  evernote2md --addFrontMatter --tagTemplate "#{{tag}}" "$filename" "$dir"
done
