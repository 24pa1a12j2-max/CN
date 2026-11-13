#include <stdio.h>
int main()
{
 int n, window, i, ack;
 printf("Enter number of frames: ");
 scanf("%d", &n);
 printf("Enter window size: ");
 scanf("%d", &window);
 i = 0;
 while (i < n)
 {
 printf("\nCurrent Window:\n");
 for (int j = i; j < i + window && j < n; j++) {
 printf("Frame %d is transmitted.\n", j);
 }
 for (int j = i; j < i + window && j < n; j++)
 {
 printf("\nEnter ACK for Frame %d (1 = Received, 0 = Lost): ", j);
 scanf("%d", &ack);
 if (ack == 1)
 {
 printf("ACK received for Frame %d.\n", j);
 }
 else
 {
 printf("Frame %d is lost.\n", j);
 printf("Retransmitting Frame %d...\n", j);
 }
 }
 i = i + window;
 }
 printf("\nAll frames transmitted successfully.\n");
 return 0;
}
OUTPUT:
