module Whenever
  module Job
    class Runner < Whenever::Job::Default

      def output
        path_required
        %Q(cd #{@path} && #{File.join('script', 'runner')} -e #{@environment} #{task.inspect})
      end
      
    end
  end
end
