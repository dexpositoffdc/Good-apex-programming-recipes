public class Context
{
	// Used to skip trigger validations for internal processes
	private static Boolean isInternalContext = false;

	public static Boolean isInternalContext()
	{
		return isInternalContext;
	}
	
	public static void setInternalContext(boolean value)
	{
		isInternalContext = value;
	}
}