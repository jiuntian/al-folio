module Jekyll
  class CompilePDFHook < Jekyll::Generator
    safe true
    priority :lowest

    def generate(site)
      cv_file = File.join(site.source, '_data/cv.yml')
      pdf_file = File.join(site.source, 'assets/pdf/generated-cv.pdf')
      script_file = File.join(site.source, '_plugins/compile-cv.rb')

      # Check if rendercv is installed
      rendercv_installed = system("pip show rendercv > /dev/null 2>&1")

      unless rendercv_installed
        Jekyll.logger.error "CompilePDF:", "rendercv is not installed. Please install it using 'pip install rendercv[full]'."
        return
      end

      # Check if cv.yml or compile-cv.rb has changed
      if File.exist?(cv_file) && File.exist?(script_file)
        cv_mtime = File.mtime(cv_file)
        script_mtime = File.mtime(script_file)
        pdf_mtime = File.exist?(pdf_file) ? File.mtime(pdf_file) : Time.at(0)

        if cv_mtime > pdf_mtime || script_mtime > pdf_mtime
          Jekyll.logger.info "CompilePDF:", "cv.yml or compile-cv.rb changed, regenerating PDF..."

          command = "rendercv render _data/cv.yml --pdf-path \"#{pdf_file}\" -nomd -nohtml -nopng 2>&1"
          Jekyll.logger.info "CompilePDF:", "Running command: #{command}"
          output = `#{command}`
          Jekyll.logger.info "CompilePDF Output:\n", output
          success = $?.success?

          if success
            Jekyll.logger.info "CompilePDF:", "PDF compilation succeeded."
          else
            Jekyll.logger.error "CompilePDF:", "PDF compilation failed. Error output:\n#{output}"
          end
        else
          Jekyll.logger.info "CompilePDF:", "No relevant changes detected, skipping PDF compilation."
        end
      else
        Jekyll.logger.warn "CompilePDF:", "cv.yml or compile-cv.rb not found, skipping PDF compilation."
      end
    end
  end
end