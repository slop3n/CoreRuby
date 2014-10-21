namespace TaylorSeries
{
    using System;

    class TaylorSeries
    {
        static void Main()
        {
            Console.WriteLine(TaylorSine(2, 5));
            Console.WriteLine(TaylorCosine(2, 5));
        }

        static decimal TaylorCosine(int input, int precision)
        {
            decimal result = 0;
            for (int i = 0; i <= precision; i++)
            {
                result += Cos(input, i);
            }

            return result;
        }

        static decimal TaylorSine(int input, int precision)
        {
            decimal result = 0;
            for (int i = 0; i <= precision; i++)
            {
                result += Sin(input, i);
            }

            return result;
        }

        static decimal Sin(int input, int precision)
        {
            decimal result = 0;
            decimal nominator = SignOfNominator(precision);
            decimal denominator = Factorial((2 * precision) + 1);
            decimal multiplicative = Power(input, ((2 * precision) + 1));
            result = (nominator / denominator) * multiplicative;

            return result;
        }

        static decimal Cos(int input, int precision)
        {
            decimal result;
            decimal nominator = SignOfNominator(precision);
            decimal denominator = Factorial(2 * precision);
            decimal multiplicative = Power(input, (2 * precision));
            result = (nominator / denominator) * multiplicative;

            return result;
        }

        static decimal SignOfNominator(int precision)
        {
            if (precision % 2 == 0) // -1^2n = 1
            {
                return 1;
            }
            else // -1^2n+1 = -1
            {
                return -1;
            }
        }

        static decimal Factorial(int input)
        {
            decimal result = 1;

            for (uint i = 1; i <= input; i++)
            {
                result *= i;
            }

            return result;
        }

        static decimal Power(int number, int power)
        {
            decimal result = 1;
            for (int i = 0; i < power; i++)
            {
                result *= number;
            }
            return result;
        }
    }
}
