module ApplicationHelper
  def display_toast(message, type)
    return unless message

    toast_class = type == :notice ? 'text-success' : 'text-danger'
    <<-HTML.html_safe
      <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
        <div class="toast show" role="alert" aria-live="assertive" aria-atomic="true" data-bs-autohide="false">
          <div class="toast-header">
            <strong class="me-auto">#{controller_name}</strong>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
          </div>
          <div class="toast-body #{toast_class}">
            #{message}
          </div>
        </div>
      </div>
    HTML
  end
end
