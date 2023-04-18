component CCounter (in  active  Cmd_t iCmd,
				    in  passive byte  iLoadVal,
				    out passive byte  oVal)
{
    sequential ExecCmd()
    {                             // PC
        while(!istrig(iCmd)) {};  // 0

        switch(iCmd)              // 1
        {
            case cReset:
                oVal = 0b;        // 2
                break(true);      // 3
            case cUp:
                oVal++;           // 4
                break(true);      // 5
            case cDown:
                oVal--;           // 6
                break(true);      // 7
            case cLoad:
                oVal = iLoadVal;  // 8
        };  // Infinite loop         9
    };
};