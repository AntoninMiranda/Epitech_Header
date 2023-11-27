local framework = {}

function framework.split(line, sep)
    if sep == nil then
        return
    end
    local str = {}
    for char in string.gmatch(line, "([^"..sep.."]+)") do 
        table.insert(str, char)
    end
    return str
end

function detect_extention(extention)
    local extentions = {
        [{'js', "java", "c", "C", "cpp","CPP","HPP","h","hpp","H","go","cs","php","phtml","phps", "swift", "ts", "rs", "kt", "kts","scala", "d", "css"}] = {"/*","**", "*/"},
        [{"py","sh", "r","nim","jl","rb","ex","exs","cr","ps1","psm1", "zig", "yaml", "conf"}] = {"##","##","##"},
        [{"lua", "hs"}] = {"--", "--", "--"},
        [{"coffee"}] = {"///", "*", "///"},
        [{"vb"}] = {"\'"},
        [{"clojure", "wat"}] = {";;", "*", ";;"},
        [{"asm"}] = {";","*", ";"},
        [{"html", "xml"}] = {"<!--", "-", "-->"},
        [{"vim"}] = {"\"","*", "\""}
    }
    for ext, comm  in pairs(extentions) do
        for i = 1, #ext  do
            if ext[i] == extention then
                return comm
            end
        end
    end
    return nil
end

function framework.comments(filename)
    file = framework.split(filename, ".")
    if file == nil then
    end
    local comments = detect_extention(file[#file])
    if framework.comments == nil then
    end
    return comments
end

function framework.get_file_name(filepath)
    file = framework.split(filepath, "/")
    if file == nil then
        file = framework.split(filepath,'\\')
        if file == nil then
            file = filepath
        end
    end
    return file[#file]
end

function framework.exist(filepath)
    local file = io.open(filepath, "r")

    if file then
        file:close()
    else
        local create_file = io.open(filepath, "w")
        if create_file then
            create_file:close()
        end
    end
end

return framework
