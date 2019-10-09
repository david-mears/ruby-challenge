describe "#my_grep" do
    CLI_COMMAND = "./lib/my_grep"

    it 'searches files for a string' do
        expect{ system CLI_COMMAND + " 'giraffe' file_for_test.txt" }
            .to output(
                "giraffe\ni like giraffes\ndid i mention that i like giraffes? good\n"
                )
            .to_stdout_from_any_process
    end

    it 'searches files for a regular expression' do
        expect{ system CLI_COMMAND + " /\bg.*s\b/ file_for_test.txt" }
            .to output(
                "i like giraffes\ndid i mention that i like giraffes? good\ngears\ngambles\ngiros\n"
                )
            .to_stdout_from_any_process
    end
end