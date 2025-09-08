#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN   PD4
#define BUTTON_PIN PD2

int main(void) {
    // Set LED pin as output
    DDRD |= (1 << LED_PIN);
    // Set button pin as input
    DDRD &= ~(1 << BUTTON_PIN);
    // Enable pull-up resistor on button pin
    PORTD |= (1 << BUTTON_PIN);


    while (1) {
        // Check if button is pressed (low )
        if (!(PORTD & (1 << BUTTON_PIN))) {
            // Turn LED on
            PORTD |= (1 << LED_PIN);
           
        } else {
            // turn off LED
            PORTD &= ~(1 << LED_PIN);
        }
    }

    return 0;
}