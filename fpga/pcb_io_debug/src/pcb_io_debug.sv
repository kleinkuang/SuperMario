
module ft_tx
(
    input  logic GPIO_SW_E,
    input  logic GPIO_SW_S,
    input  logic GPIO_SW_W,
    input  logic GPIO_SW_N,
    input  logic GPIO_SW_C,
    
    output logic VDD2_EN,
    output logic AVDD1_ESD_EN,
    output logic AVDD1_EN,
    output logic DVDD1_EN,
    output logic VREF_EN,
    
    output logic LED_VDD2_EN,
    output logic LED_AVDD1_ESD_EN,
    output logic LED_AVDD1_EN,
    output logic LED_DVDD1_EN,
    output logic LED_VREF_EN
);

assign LED_VDD2_EN      = GPIO_SW_E;
assign LED_AVDD1_ESD_EN = GPIO_SW_S;
assign LED_AVDD1_EN     = GPIO_SW_W;
assign LED_DVDD1_EN     = '1;
assign LED_VREF_EN      = GPIO_SW_C;

assign VDD2_EN      = GPIO_SW_E;
assign AVDD1_ESD_EN = GPIO_SW_S;
assign AVDD1_EN     = GPIO_SW_W;
assign DVDD1_EN     = '1;
assign VREF_EN      = GPIO_SW_C;

endmodule
