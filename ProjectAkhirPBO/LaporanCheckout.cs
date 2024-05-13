using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjectAkhirPBO
{
    using model;
    public partial class LaporanCheckout : Form
    {
        CheckoutCls checkout = new CheckoutCls();
        public LaporanCheckout()
        {
            InitializeComponent();
        }

        void bersihkan()
        {
            id_checkout_txt.Clear();
            id_checkout_txt.Focus();
        }

        void tampilGrid()
        {
            laporan_dgv.DataSource = checkout.tampilCheckout();
        }

        private void cari_btn_Click(object sender, EventArgs e)
        {
            //cari_btn.Enabled = false;
            laporan_dgv.DataSource = checkout.cariDgId(id_checkout_txt.Text);
        }

        private void LaporanCheckout_Load(object sender, EventArgs e)
        {
            tampilGrid();
            bersihkan();
        }

        //Untuk menampilkan id_pasien di textbox ketika diklik pada column
        private void laporan_dgv_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow baris = this.laporan_dgv.Rows[e.RowIndex];
                id_checkout_txt.Text = baris.Cells[0].Value.ToString();
            }
        }

    }
}
