module Restador_Parametrizable #(parameter N = 6) (
    input logic clk,         // Reloj
    input logic reset,       // Reset asincrónico
    input logic boton,       // Botón para decrementar
    input logic [N-1:0] valor_inicial, // Valor inicial
    output logic [N-1:0] R   // Resultado
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            R <= valor_inicial; // Reset asincrónico con valor inicial
        else if (boton)
            R <= R - 1; // Decremento
    end
endmodule