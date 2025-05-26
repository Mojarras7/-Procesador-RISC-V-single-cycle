# 🔧 RISC-V Single Cycle Processor

Este proyecto implementa un procesador **RISC-V** de un solo ciclo en Verilog, como parte de un ejercicio educativo.

## 📁 Estructura del Proyecto

- riscv_single_cycle/
  - src/
    - top.v              # Módulo principal (interconexión)
    - program_counter.v
    - instruction_memory.v
    - control_unit.v
    - register_file.v
    - alu.v
    - alu_control.v
    - immediate_generator.v
    - data_memory.v
    - mux.v
    - branch_comparator.v
    - adder.v
  - testbench/
    - top_tb.v           # Testbench principal
    - (otros archivos de prueba)
  - docs_y_capturas/
    - informe.pdf        # Informe con explicación, simulaciones y capturas



## 🧪 Test Program

Incluye instrucciones básicas:
- Operaciones aritméticas (`add`, `sub`)
- Carga y almacenamiento (`lw`, `sw`)
- Saltos (`beq`, `bne`, `jal`, `jalr`)


## 🚀 Estado del Proyecto

- [ ] `RegisterFile`
- [ ] `ALU`
- [ ] `ALUControl`
- [ ] `ControlUnit`
- [ ] Resto de módulos
- [ ] Integración en `top.v`
- [ ] Simulación final
- [ ] Informe y entrega