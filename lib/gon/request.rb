module Gon
  module Request
    class << self

      def env
        @request_env if defined? @request_env
      end

      def env=(environment)
        @request_env = environment
        @request_env['gon'] ||= {}
      end

      def request
        @request_id if defined? @request_id
      end

      def request=(request_id)
        @request_id = request_id
      end

      def gon
        env['gon'] if env
      end

      def clear
        @request_env['gon'] = {}
      end

    end
  end
end