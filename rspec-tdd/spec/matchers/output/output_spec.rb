describe 'Matcher output' do
  it { expect{p 'Eduardo'}.to output.to_stdout } 

  it { expect{print 'Eduardo'}.to output('Eduardo').to_stdout } 

  it { expect{p 'Eduardo Brndão'}.to output(/Eduardo/).to_stdout } 

  it { expect{warn 'Eduardo'}.to output.to_stderr } 

  it { expect{warn "Eduardo"}.to output("Eduardo\n").to_stderr } 

  it { expect{warn'Eduardo Brndão'}.to output(/Eduardo/).to_stderr } 
end
