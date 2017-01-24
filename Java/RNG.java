import java.util.Scanner;
import java.util.Random;
public class RNG
{
	public static void main(String[] args)
	{
		Scanner kb = new Scanner(System.in);
		System.out.print("Enter the number of dice to throw and number of faces: ");
		int numDice = kb.nextInt();
		int diceType = kb.nextInt();
		
		dieThrow(numDice, diceType);
		
		kb.close();
	}
	
	/**
	* To roll an input number of dice with an input number of faces, call dieThrow as many times as needed.
	*/
	
	public static void dieThrow(int num, int die)
	{
		int temp = 0;
		Random randomNumber = new Random();
		for (int i = 0; i < num; i++)
		{
			temp = randomNumber.nextInt(die)+1;
			System.out.print(temp);
			if(i < num-1)
				System.out.print(", ");
		}
	}
	
	/**
	* If a character's stats are being rolled for call dieThrowChar.
	* Taking two arguments, it outputs the result of four d6 being thrown, removing the lowest and summing the remaining three.
	* This loops six times to generate the values for the character's six skills.
	*/
	
	public static void dieThrowChar()
	{
		int temp = 0;
		Random randomNumber = new Random();
		for (int i = 0; i < 6; i++)
		{
			temp = randomNumber.nextInt(21);
			if (temp < 3 || temp > 18)
			{
				i--;
				continue;
			}
			System.out.print(temp);
			if(i < 5)
				System.out.print(", ");
		}
	}
}
