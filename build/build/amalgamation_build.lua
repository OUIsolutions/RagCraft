local alreay_amalamated_done = false
function amalgamation_build()
    if alreay_amalamated_done then
        return
    end
    alreay_amalamated_done = true
    silver_chain_organize()


    local runtime = darwin.camalgamator.generate_amalgamation("src/main.c")
    
  
    darwin.dtw.write_file("release/"..PROJECT_NAME.." .c", runtime)



end
