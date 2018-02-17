.class public ThrowStrings.Program
{
	.method public hidebysig static void CatchString() il managed
    {
        .locals (class [mscorlib]System.Exception V_0)
        .try
        {
            call    void ThrowStrings.Program::ThrowString()
            ldstr   "Bye"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }
        //
        // CATCH STRING
        //
        catch System.String
        {
            stloc.0
            ldstr    "String was thrown"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }
 
        IL_001e: ldstr "Finish"
        call     void [mscorlib]System.Console::WriteLine 
                      (class System.String)
        ret
    }

	.method private hidebysig static void ThrowString() il managed
    {
        //
        // THROW STRING
        //
        ldstr     "String throw up!"       
        throw
    }
}