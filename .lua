local FunctionModule = ({}); FunctionModule["Working"] = true;
local DataFunctionTable = ({});

function FunctionModule:LogFunction(name, state)
    DataFunctionTable[name] = ({
        ["callback"] = state;
    })
end;

function FunctionModule:UpdateFunction(name, newState)
    if DataFunctionTable[name] then 
        DataFunctionTable[name]["callback"] = newState;
    else 
        return;
    end;
end;

function FunctionModule:RunFunction(name)
    if DataFunctionTable[name] then 
        DataFunctionTable[name]["callback"]()
    else 
        return;
    end;
end;

return FunctionModule or {["Working"] = false};
