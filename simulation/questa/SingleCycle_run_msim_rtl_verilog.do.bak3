transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/SingleCycle.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/RegisterFile.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/Mux.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/ImmediateGenerator.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/DataMemory.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/ControlUnit.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/BranchComparator.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/ALUControl.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/Adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/InstructionMemory.v}

vlog -vlog01compat -work work +incdir+C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle {C:/Users/edwin/Desktop/-Procesador-RISC-V-single-cycle/SyngleCycle_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  SyngleCycle_tb

add wave *
view structure
view signals
run -all
