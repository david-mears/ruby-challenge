require 'my_grep'

describe "#my_grep" do
    it 'can be run from the command line' do
        expect{ system "my_grep" }.to output("my_grep ran").to_stdout_from_any_process
    end

    it 'searches files for a string' do
        expect{ system "my_grep 'giraffe' file_for_test.txt" }
            .to output("giraffe\ni like giraffes\ndid i mention that i like giraffes? good")
            .to_stdout_from_any_process
    end

    it 'searches files for a regular expression' do
        raise "TODO"
    end
end