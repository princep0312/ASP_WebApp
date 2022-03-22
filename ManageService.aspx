<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageService.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="log-w3">
<div class="w3layouts-main">
	<h2>User Profile</h2>
		<form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" class="ggg" placeholder="User Service" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" class="ggg" placeholder="Description" runat="server"></asp:TextBox>
			<br>
		        Status:
				<div class="clearfix">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Activate</asp:ListItem>
                        <asp:ListItem Value="0">Deactivate</asp:ListItem>
                    </asp:RadioButtonList>
        </div>
            <asp:Button ID="Button1" runat="server" Text="Submit" 
            onclick="Button1_Click" />
				
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
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
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
        <br />
        
				
		</form>
</div>
</div>
</asp:Content>

