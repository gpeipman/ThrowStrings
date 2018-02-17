.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}

.class private auto ansi beforefieldinit Program extends [mscorlib]System.Object
{
    .method private hidebysig static void Main(string[] args) cil managed
    {
        .entrypoint
		.maxstack 8

        call    void Program::ThrowAndCatchException()
        call    void Program::ThrowAndCatchString()
 
        ldstr   "\r\n\r\nPress any key to continue ..."
        call    void [mscorlib]System.Console::WriteLine(string)
		call	valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
		pop
        ret
    }

    .method private hidebysig static void ThrowAndCatchException() cil managed
    {
        .locals (class [mscorlib]System.Exception V_0)

        .maxstack  8
        ldstr   "Throwing and catching exception"
        call    void [mscorlib]System.Console::WriteLine(class System.String)

        .try
        {
            call    void Program::ThrowException()
            ldstr   "No exception was thrown ..."
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

        IL_001e: ret
    }
 
    .method public hidebysig static void ThrowException() 
        cil managed
    {
        newobj instance void [mscorlib]System.Exception::.ctor()
        throw
    }

    .method public hidebysig static void ThrowAndCatchString() cil managed
    {
        .locals (class [mscorlib]System.Exception V_0)
        .maxstack  8
				
        ldstr   "Throwing and catching string"
        call    void [mscorlib]System.Console::WriteLine(class System.String)

        .try
        {
            call    void Program::ThrowString()
			
            ldstr   "No string or exception was thrown ..."
            call    void [mscorlib]System.Console::WriteLine(class System.String)
			
            leave.s IL_001e
        }
        catch [mscorlib]System.Exception
        {
            ldstr   "Exception was thrown!"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }
        //
        // CATCH STRING
        //
        catch System.String
        {
            ldstr    "String was thrown!"
            call    void [mscorlib]System.Console::WriteLine 
                    (class System.String)
            leave.s IL_001e
        }

        IL_001e: ret
    }

    .method private hidebysig static void ThrowString() cil managed
    {
        //
        // THROW STRING
        //
        ldstr      "I am string that was thrown like exception"      
        throw
    }
}