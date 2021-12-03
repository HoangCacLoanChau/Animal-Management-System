using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Animal_Management_System_Form
{
    public partial class Home_page : UserControl
    {
        private static Home_page _instance;
        public static Home_page Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new Home_page();
                return _instance;
            }
        }
        public Home_page()
        {
            InitializeComponent();
        }
    }
}
