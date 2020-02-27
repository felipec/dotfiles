syn match diffFileId "^diff.*"

if !exists("diff_context")
  syn match diffOldFile "^--- .*"
  syn match diffNewFile "^+++ .*"
else
  syn match diffOldFile	"^\*\*\* .*"
  syn match diffNewFile	"^--- .*"
end
