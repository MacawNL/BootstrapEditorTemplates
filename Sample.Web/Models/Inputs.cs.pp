using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace $rootnamespace$.Models
{
    public enum EnumType
    {
        [Description("Enum Value 1")]
        EnumValue1 = 1,
        [Description("Enum Value 2")]
        EnumValue2 = 2,
        [Description("Enum Value 3")]
        EnumValue3 = 3
    }
    
    public class Inputs
    {
        public bool BoolValue { get; set; }
        public DateTime DateValue { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}", ApplyFormatInEditMode = true)]
        public Decimal DecimalValue { get; set; }

        [UIHint("Enum")]
        public EnumType EnumValue { get; set; }

        public HttpPostedFileBase FileValue { get; set; }
        public int IntValue { get; set; }
        public string MarkdownValue { get; set; }
        public string LongTextValue { get; set; }
        public string PasswordValue { get; set; }
        public float FloatValue { get; set; }
        public string StringValue { get; set; }

        [DisplayFormat(DataFormatString = "{0:hh\\:mm}", ApplyFormatInEditMode = true)]
        public TimeSpan TimeSpanValue { get; set; }
    }
}