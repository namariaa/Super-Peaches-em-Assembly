.text
main: 
      
      addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      sub $10, $8, $9
      srl $10, $10, 31 #sinal a
      
      sub $11, $9, $8
      srl $11, $11, 31 #sinal b

      mul $12, $10, -1
      addi $13, $12, 1
      
      mul $14, $11, -1
      addi $15, $14, 1
      
      mul $16, $8, $13 #input1 * neg
      mul $17, $9, $15 #input2 * srl

      add $4, $16, $17
      # #multipliquei por -1 pra tirar o neg que o not trás
      addi $2, $0, 1
      syscall

      
      addi $2, $0, 10
      syscall