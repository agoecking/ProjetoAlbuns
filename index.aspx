<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMain.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Albuns.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceAlbum" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    <AlternatingItemTemplate>
        <span style="background-color: #FFF8DC;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Titulo:
        <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
        <br />
        Lancamento:
        <asp:Label ID="LancamentoLabel" runat="server" Text='<%# Eval("Lancamento") %>' />
        <br />
        Artista:
        <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />
        <br />
        Genero:
        <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
        <br />
        Preco:
        <asp:Label ID="PrecoLabel" runat="server" Text='<%# Eval("Preco") %>' />
        <br />
        Cadastro:
        <asp:Label ID="CadastroLabel" runat="server" Text='<%# Eval("Cadastro") %>' />
        <br />
        Musica:
        <asp:Label ID="MusicaLabel" runat="server" Text='<%# Eval("Musica") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <span style="background-color: #008A8C;color: #FFFFFF;">Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Titulo:
        <asp:TextBox ID="TituloTextBox" runat="server" Text='<%# Bind("Titulo") %>' />
        <br />
        Lancamento:
        <asp:TextBox ID="LancamentoTextBox" runat="server" Text='<%# Bind("Lancamento") %>' />
        <br />
        Artista:
        <asp:TextBox ID="ArtistaTextBox" runat="server" Text='<%# Bind("Artista") %>' />
        <br />
        Genero:
        <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
        <br />
        Preco:
        <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
        <br />
        Cadastro:
        <asp:TextBox ID="CadastroTextBox" runat="server" Text='<%# Bind("Cadastro") %>' />
        <br />
        Musica:
        <asp:TextBox ID="MusicaTextBox" runat="server" Text='<%# Bind("Musica") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        <br />
        <br />
        </span>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <span>No data was returned.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">Titulo:
        <asp:TextBox ID="TituloTextBox" runat="server" Text='<%# Bind("Titulo") %>' />
        <br />
        Lancamento:
        <asp:TextBox ID="LancamentoTextBox" runat="server" Text='<%# Bind("Lancamento") %>' />
        <br />
        Artista:
        <asp:TextBox ID="ArtistaTextBox" runat="server" Text='<%# Bind("Artista") %>' />
        <br />
        Genero:
        <asp:TextBox ID="GeneroTextBox" runat="server" Text='<%# Bind("Genero") %>' />
        <br />
        Preco:
        <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
        <br />
        Cadastro:
        <asp:TextBox ID="CadastroTextBox" runat="server" Text='<%# Bind("Cadastro") %>' />
        <br />
        Musica:
        <asp:TextBox ID="MusicaTextBox" runat="server" Text='<%# Bind("Musica") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br />
        <br />
        </span>
    </InsertItemTemplate>
    <ItemTemplate>
        <span style="background-color: #DCDCDC;color: #000000;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Titulo:
        <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
        <br />
        Lancamento:
        <asp:Label ID="LancamentoLabel" runat="server" Text='<%# Eval("Lancamento") %>' />
        <br />
        Artista:
        <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />
        <br />
        Genero:
        <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
        <br />
        Preco:
        <asp:Label ID="PrecoLabel" runat="server" Text='<%# Eval("Preco") %>' />
        <br />
        Cadastro:
        <asp:Label ID="CadastroLabel" runat="server" Text='<%# Eval("Cadastro") %>' />
        <br />
        Musica:
        <asp:Label ID="MusicaLabel" runat="server" Text='<%# Eval("Musica") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Titulo:
        <asp:Label ID="TituloLabel" runat="server" Text='<%# Eval("Titulo") %>' />
        <br />
        Lancamento:
        <asp:Label ID="LancamentoLabel" runat="server" Text='<%# Eval("Lancamento") %>' />
        <br />
        Artista:
        <asp:Label ID="ArtistaLabel" runat="server" Text='<%# Eval("Artista") %>' />
        <br />
        Genero:
        <asp:Label ID="GeneroLabel" runat="server" Text='<%# Eval("Genero") %>' />
        <br />
        Preco:
        <asp:Label ID="PrecoLabel" runat="server" Text='<%# Eval("Preco") %>' />
        <br />
        Cadastro:
        <asp:Label ID="CadastroLabel" runat="server" Text='<%# Eval("Cadastro") %>' />
        <br />
        Musica:
        <asp:Label ID="MusicaLabel" runat="server" Text='<%# Eval("Musica") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSourceAlbum" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Album] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Album] ([Titulo], [Lancamento], [Artista], [Genero], [Preco], [Cadastro], [Musica]) VALUES (@Titulo, @Lancamento, @Artista, @Genero, @Preco, @Cadastro, @Musica)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Album] ORDER BY [Titulo]" UpdateCommand="UPDATE [Album] SET [Titulo] = @Titulo, [Lancamento] = @Lancamento, [Artista] = @Artista, [Genero] = @Genero, [Preco] = @Preco, [Cadastro] = @Cadastro, [Musica] = @Musica WHERE [Id] = @original_Id">
    <DeleteParameters>
        <asp:Parameter Name="original_Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Titulo" Type="String" />
        <asp:Parameter DbType="Date" Name="Lancamento" />
        <asp:Parameter Name="Artista" Type="String" />
        <asp:Parameter Name="Genero" Type="String" />
        <asp:Parameter Name="Preco" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="Cadastro" />
        <asp:Parameter Name="Musica" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Titulo" Type="String" />
        <asp:Parameter DbType="Date" Name="Lancamento" />
        <asp:Parameter Name="Artista" Type="String" />
        <asp:Parameter Name="Genero" Type="String" />
        <asp:Parameter Name="Preco" Type="Decimal" />
        <asp:Parameter DbType="Date" Name="Cadastro" />
        <asp:Parameter Name="Musica" Type="String" />
        <asp:Parameter Name="original_Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
