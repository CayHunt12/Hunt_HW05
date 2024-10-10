nclude <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    // Check if the correct number of arguments is provided
        if (argc != 2) {
                printf("Usage: %s <number_of_times>\n", argv[0]);
                        return 1; // Return an error code
                            }

                                // Convert the command line argument to an
                                // integer
                                    int times = atoi(argv[1]);

                                        // Check if the conversion is successful
                                        // and the number is positive
                                            if (times <= 0) {
                                                    printf("Please provide a
                                                    positive integer.\n");
                                                            return 1; // Return
                                                            an error code
                                                                }

                                                                    // Print
                                                                    // "Hello
                                                                    // World!"
                                                                    // the
                                                                    // specified
                                                                    // number of
                                                                    // times
                                                                        for (int
                                                                        i = 0; i
                                                                        < times;
                                                                        i++) {
                                                                                printf("Hello
                                                                                World!\n");
                                                                                    }

                                                                                        return
                                                                                        0;
                                                                                        // Success
                                                                                        }

