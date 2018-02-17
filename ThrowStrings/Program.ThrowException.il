.class public ThrowStrings.Program
{
	.method public static void CatchException() il managed
	{
		.locals (class [mscorlib]System.Exception V_0)
        .try
        {
            call    void ThrowStrings.Program::ThrowException()
            ldstr   "Bye"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }
        catch [mscorlib]System.Exception
        {
            stloc.0
            ldstr   "Exception was thrown!"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }
 
        IL_001e: ldstr "Finish"
        call     void [mscorlib]System.Console::WriteLine 
                 (class System.String)
        ret
	}

	.method private hidebysig static void ThrowException() il managed
    {
        newobj instance void [mscorlib]System.Exception::.ctor()
        throw
    }
}
