for file in *.tex
do
  [ -e "$file" ] || continue
  {
    echo "% !TEX root = algo-quicksheet.tex"
    cat "$file"
  } > tmpfile && mv tmpfile "$file"
done