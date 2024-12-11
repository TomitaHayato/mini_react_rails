# このファイルを変更した場合は、必ずサーバーを再起動してください。

# フロントエンドアプリからAPIが呼び出される際のCORSの問題を回避します。

# クロスオリジンのAjaxリクエストを受け入れるために、クロスオリジンリソース共有（CORS）を処理します。

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "localhost:5173"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
