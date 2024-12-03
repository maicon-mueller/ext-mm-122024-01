CREATE OR REPLACE procedure PABC_LIBERAR_ATENDIMENTO_PACIENTE(nr_seq_check_list_p number,
nr_atendimento_p number,
ie_opcao_p varchar2) is

begin

if (ie_opcao_p = 'U') then
update atendimento_paciente
set nr_seq_check_list = nr_seq_check_list_p
where nr_atendimento = nr_atendimento_p;
elsif (ie_opcao_p = 'D') then
update atendimento_paciente
set nr_seq_check_list = null
where nr_seq_check_list = nr_seq_check_list_p;
end if;
end PABC_LIBERAR_ATENDIMENTO_PACIENTE;
/
