<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Calculadora.net.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style>
    .titulo{
        text-align:center;

        
        

    }

    .calculadora {
        width: 265px;
        margin: auto;
        padding: 10px;
        background-color: #62748E;
        border-radius: 10px;
        box-shadow: 0 0 10px #ccc;
    }
    .pantalla {
        width: 100%;
        height: 40px;
        font-size: 20px;
        text-align: right;
        margin-bottom: 10px;
        background-color: #E5E7EB;
    }
    .botones {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 10px;
    }

    .boton {
        width: 50px;
        height: 50px;
        margin: 5px;
        font-size: 18px;
        background-color: #21BCFF;
        border-radius: 25px;
        
    }
    boton-limpiar {
        background-color: #ff6666;
        
    }
    .boton_operador {
        width: 50px;
        height: 50px;
        margin: 5px;
        font-size: 18px;
        background-color: #FFF085;

    }
    .boton_igual{
        width: 50px;
        height: 50px;
        margin: 5px;
        font-size: 18px;
        background-color: #31C950;

    }
    .boton_especial{
        width: 50px;
        height: 50px;
        margin: 5px;
        font-size: 18px;
        background-color: #FF637E;

    }
    

    .boton, .boton_operador, .boton_especial, .boton_igual {
    transition: transform 0.1s ease;
    }
    .boton:active, .boton_operador:active, .boton_especial:active, .boton_igual:active {
        transform: scale(0.95);
    }


</style>

</head>
<body>
    <form id="form1" runat="server">
       
        <div class="calculadora">

            <asp:TextBox ID="txtPantalla" runat="server" CssClass="pantalla" ReadOnly="true" />
            <div class="botones">
                <asp:Button ID="btnLimpiar" runat="server" Text="AC" CssClass="boton_especial" OnClick="btnLimpiar_Click" />
                <asp:Button ID="btnParentesis" runat="server" Text="()" CssClass="boton_especial" OnClick="btnParentesis_Click" />
                <asp:Button ID="btnResto" runat="server" Text="%" CssClass="boton_especial" OnClick="btnCaracterEspecial_Click" />
                <asp:Button ID="btnDividir" runat="server" Text="/" CssClass="boton_operador" OnClick="btnOperador_Click" />
            </div>
            <div class="botones">
                <asp:Button ID="btn7" runat="server" Text="7" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn8" runat="server" Text="8" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn9" runat="server" Text="9" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btnMultiplicar" runat="server" Text="*" CssClass="boton_operador" OnClick="btnOperador_Click" />
            </div>
            <div class="botones">
                <asp:Button ID="btn4" runat="server" Text="4" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn5" runat="server" Text="5" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn6" runat="server" Text="6" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btnRestar" runat="server" Text="-" CssClass="boton_operador" OnClick="btnOperador_Click" />
            </div>
            <div class="botones">
                <asp:Button ID="btn1" runat="server" Text="1" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn2" runat="server" Text="2" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btn3" runat="server" Text="3" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btnSumar" runat="server" Text="+" CssClass="boton_operador" OnClick="btnOperador_Click" /> 
            </div>
          <div class="botones">
                <asp:Button ID="btn0" runat="server" Text="0" CssClass="boton" OnClick="Boton_Click" />
                <asp:Button ID="btnPunto" runat="server" Text="." CssClass="boton_especial" OnClick="btnCaracterEspecial_Click" />
                <asp:Button ID="btnBorrar" runat="server" Text="←" CssClass="boton_especial" OnClick="btnBorrar_Click" />
                <asp:Button ID="btnIgual" runat="server" Text="=" CssClass="boton_igual" OnClick="btnIgual_Click" />
            </div>
        </div>
    </form>
</body>
</html>
