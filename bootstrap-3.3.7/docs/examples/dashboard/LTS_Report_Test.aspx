<%@ Page Language="C#" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
        System.Data.SqlClient.SqlConnection objConn = new System.Data.SqlClient.SqlConnection();
        objConn.ConnectionString = "server=TMHPCSQ8; database=Transmatic_PLEX_LTS; uid=LTS_Report_Viewer;pwd=LAB123;";
            objConn.Open();
        System.Data.SqlClient.SqlCommand objCmd = new System.Data.SqlClient.SqlCommand("Inspections_By_Part_Report_Grid", objConn);
            objCmd.CommandType = System.Data.CommandType.StoredProcedure;
            GridView1.DataSource = objCmd.ExecuteReader();
            GridView1.DataBind();
            objConn.Close();
        }
    </script>   
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
