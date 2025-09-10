#include<arduino.h>
#include<avr/io.h>
#include<util/delay.h>

#define DATA_PIND7 PD7
#define DATA_PIND6 PB0
#define DATA_PIND5 PB1
#define DATA_PIND4 PB2
#define ENABLE PB3
#define DATA_RS PB4




void lcd_pulse(){
    PORTB|=(1<<ENABLE);
    _delay_ms(2);
    PORTB&=~(1<<ENABLE);
    _delay_ms(2);    
}
void lcd_command(unsigned char command){
    PORTB&=~(1<<DATA_RS);   //RS=0 command
    //send higher nibble
    if(command & 0x10) 
    PORTB|=(1<<DATA_PIND4);  //set 1
    else
    PORTB&=~(1<<DATA_PIND4); //set 0

    if(command & 0x20) PORTB|=(1<<DATA_PIND5);  //set 1
    else PORTB&=~(1<<DATA_PIND5); //set 0

    if(command & 0x40) PORTB|=(1<<DATA_PIND6);  //set 1
    else PORTB&=~(1<<DATA_PIND6); //set 0

    if(command & 0x80) PORTB|=(1<<DATA_PIND7);  //set 1
    else PORTB&=~(1<<DATA_PIND7); //set 0
    lcd_pulse();

    //send lower nibble
    if(command & 0x01) PORTB|=(1<<DATA_PIND4);  //set 1
    else PORTB&=~(1<<DATA_PIND4); //set 0
 
    if(command & 0x02) PORTB|=(1<<DATA_PIND5);  //set 1
    else PORTB&=~(1<<DATA_PIND5); //set 0

    if(command & 0x04) PORTB|=(1<<DATA_PIND6);  //set 1
    else PORTB&=~(1<<DATA_PIND6); //set 0

    if(command & 0x08) PORTB|=(1<<DATA_PIND7);  //set 1
    else PORTB&=~(1<<DATA_PIND7); //set 0
    lcd_pulse();

}
void lcd_init(){
    _delay_ms(200);
    lcd_command(0x02);      //4 bit mode
    lcd_command(0x28);        //2 line, 5*7 matrix
    lcd_command(0x0C);       //display on, cursor off
    lcd_command(0x06);       //increment cursor
    lcd_command(0x01);      //clear display
    _delay_ms(200);
        
}
void lcd_data(unsigned int data){
    PORTB|=(1<<DATA_RS);   //RS=1 data
    //send higher nibble
    if(data & 0x10) 
    PORTB|=(1<<DATA_PIND4);  //set 1
    else
    PORTB&=~(1<<DATA_PIND4); //set 0

    if(data & 0x20) PORTB|=(1<<DATA_PIND5);  //set 1
    else PORTB&=~(1<<DATA_PIND5); //set 0

    if(data & 0x40) PORTB|=(1<<DATA_PIND6);  //set 1
    else PORTB&=~(1<<DATA_PIND6); //set 0

    if(data & 0x80) PORTB|=(1<<DATA_PIND7);  //set 1
    else PORTB&=~(1<<DATA_PIND7); //set 0
    lcd_pulse();

    //send lower nibble
    if(data & 0x01) PORTB|=(1<<DATA_PIND4);  //set 1
    else PORTB&=~(1<<DATA_PIND4); //set 0
 
    if(data & 0x02) PORTB|=(1<<DATA_PIND5);  //set 1
    else PORTB&=~(1<<DATA_PIND5); //set 0

    if(data & 0x04) PORTB|=(1<<DATA_PIND6);  //set 1
    else PORTB&=~(1<<DATA_PIND6); //set 0

    if(data & 0x08) PORTB|=(1<<DATA_PIND7);  //set 1
    else PORTB&=~(1<<DATA_PIND7); //set 0
    lcd_pulse();

      
}
void lcd_print(char *str){
    while(*str){
        lcd_data(*str++);
       
}
}
int main(){
    DDRB=0XFF;
    DDRD|=(1<<DATA_PIND7);
    lcd_init();
    lcd_command(0x80); //1st line 1st position
    lcd_print("HELLO WORLD");
    lcd_command(0xC0); //2nd line 1st position
    lcd_print("LCD working");
    while(1){

    }
    
}



