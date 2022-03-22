<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="log-w3">
<div class="w3layouts-main">
	<h2>User Profile</h2>
		<form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" class="ggg" placeholder="User Name" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" class="ggg" placeholder="Email" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" class="ggg" placeholder="PASSWORD" runat="server"></asp:TextBox>
			
		
				<div class="clearfix"></div>
            <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click"  />
				
		<br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
				
		<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User Name">
                    <ItemTemplate>
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("username") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                            onclick="Button2_Click" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                            onclick="Button3_Click" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
				
		</form>
</div>
</div>
</asp:Content>

