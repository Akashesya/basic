using System;
using System.Collections.Generic;

namespace Consoledlms
{
    
    public class ObisCode
    {
        public byte A { get; set; }
        public byte B { get; set; }
        public byte C { get; set; }
        public byte D { get; set; }
        public byte E { get; set; }
        public byte F { get; set; }

        public ObisCode(byte a, byte b, byte c, byte d, byte e, byte f)
        {
            A = a; B = b; C = c; D = d; E = e; F = f;
        }

        public byte[] ToByteArray()
        {
            return new byte[] { A, B, C, D, E, F };
        }

        public override string ToString()
        {
            return $"{A}-{B}:{C}.{D}.{E}.{F}";
        }
    }

    
    public class MeterObject
    {
        public string Name { get; set; }
        public ObisCode Obis { get; set; }
        public int Value { get; set; }

        public MeterObject(string name, ObisCode obis, int value)
        {
            Name = name;
            Obis = obis;
            Value = value;
        }
    }

    public class DLMS_Service
    {
        private List<MeterObject> meterObjects = new List<MeterObject>();

        public DLMS_Service()
        {
         
            meterObjects.Add(new MeterObject("Active Energy Import", new ObisCode(1, 0, 1, 8, 0, 255), 100));
            meterObjects.Add(new MeterObject("Voltage", new ObisCode(1, 0, 1, 9, 1, 0), 240));
        }

        
        public void DlmsGet(ObisCode obis)
        {
            foreach (var meterObject in meterObjects)
            {
                if (obis.ToString() == meterObject.Obis.ToString())
                {
                    Console.WriteLine($"[GET] {meterObject.Name} = {meterObject.Value}");
                    return;
                }
            }
            Console.WriteLine(" OBIS not found.");
        }

  
        public void DlmsSet(ObisCode obis, int newValue)
        {
            foreach (var meterObject in meterObjects)
            {
                if (obis.ToString() == meterObject.Obis.ToString())
                {
                    meterObject.Value = newValue;
                    Console.WriteLine($"[SET] {meterObject.Name} updated to {newValue}");
                    return;
                }
            }
            Console.WriteLine("[SET] OBIS not found.");
        }

       
        public void DlmsAction(ObisCode obis, string method)
        {
            foreach (var meterObject in meterObjects)
            {
                if (obis.ToString() == meterObject.Obis.ToString())
                {
                    if (method == "RESET")
                    {
                        meterObject.Value = 0;
                        Console.WriteLine("[ACTION] Reset complete.");
                        return;
                    }
                    else if (method == "SYNC_TIME")
                    {
                        // For demonstration, just printing sync time action
                        Console.WriteLine("[ACTION] Synchronizing meter clock to system time...");
                        return;
                    }
                    else
                    {
                        Console.WriteLine("[ACTION] Unknown method.");
                        return;
                    }
                }
            }
            Console.WriteLine("[ACTION] OBIS not found.");
        }
    }

    
    public class GetRequestApdu
    {
        public static byte[] CreateGetRequest(ObisCode obis, ushort classId, byte attributeId)
        {
            List<byte> apdu = new List<byte>();
          
            apdu.Add(0xC0); // GET-Request
            apdu.Add(0x01); // Get-Request-Normal
            // Invoke ID and Priority
            apdu.Add(0x01); // Example: Invoke ID = 1, normal priority
            // Class ID (2 bytes)
            apdu.Add((byte)(classId >> 8)); // High byte
            apdu.Add((byte)(classId & 0xFF)); // Low byte
            // OBIS code
            apdu.AddRange(obis.ToByteArray());
            // Attribute ID
            apdu.Add(attributeId);
            // Access Selector (0 = no selective access)
            apdu.Add(0x00);
            return apdu.ToArray();
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            
            DLMS_Service dlmsService = new DLMS_Service();

            // OBIS code for Active Energy Import (1-0:1.8.0.255)
            var obisEnergy = new ObisCode(1, 0, 1, 8, 0, 255);
            // OBIS code for Voltage (1-0:1.9.1.0)
            var obisVoltage = new ObisCode(1, 0, 1, 9, 1, 0);

           
            Console.WriteLine("==== GET Request ====");
            dlmsService.DlmsGet(obisEnergy); // Should find the object
            dlmsService.DlmsGet(obisVoltage); // Should find the object

           
            Console.WriteLine("\n==== SET Request ====");
            dlmsService.DlmsSet(obisVoltage, 250); // Set new value for Voltage
            dlmsService.DlmsGet(obisVoltage); // Check if value is updated

            Console.WriteLine("\n==== ACTION Request ====");
            dlmsService.DlmsAction(obisEnergy, "RESET"); 
            dlmsService.DlmsAction(obisVoltage, "SYNC_TIME"); 
        }
    }
}
