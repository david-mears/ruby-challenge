describe "#my_grep" do
    CLI_COMMAND = "./lib/my_grep"

    it 'can be run from the command line' do
        expect{ system CLI_COMMAND }.to output("my_grep ran\n").to_stdout_from_any_process
    end

    it 'searches files for a string' do
        expect{ system CLI_COMMAND + " 'giraffe' file_for_test.txt" }
            .to output("giraffe\ni like giraffes\ndid i mention that i like giraffes? good")
            .to_stdout_from_any_process
    end

    it 'searches files for a regular expression' do
        raise "TODO"
    end
end