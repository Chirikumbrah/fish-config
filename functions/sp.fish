function sp
    set --local keyword (string join -- " " $argv)
    set --local baseURL "https://www.startpage.com/search?q="
    if test -n "$keyword"
        set searchURL (string join '' $baseURL $keyword) 
    end

    $SCRIPTS/system/find_app.sh chromium &> /dev/null
    xdg-open "$searchURL" &> /dev/null
end
