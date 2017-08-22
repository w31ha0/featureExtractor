.class final Lcom/mobfox/sdk/networking/MobFoxRequest$1;
.super Landroid/os/AsyncTask;
.source "MobFoxRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/networking/MobFoxRequest;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field err:Ljava/lang/Exception;

.field response:Ljava/lang/Object;

.field responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field status:I

.field final synthetic val$cb:Lcom/mobfox/sdk/networking/AsyncCallback;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$finalURL:Ljava/lang/String;

.field final synthetic val$formatter:Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$reqHeaders:Ljava/util/Map;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$finalURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$reqHeaders:Ljava/util/Map;

    iput-object p3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$method:Ljava/lang/String;

    iput p4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$timeout:I

    iput-object p5, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$data:Ljava/lang/Object;

    iput-object p6, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$formatter:Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;

    iput-object p7, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "con":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 145
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$finalURL:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v5, "u":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 147
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 148
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$reqHeaders:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "h":Ljava/lang/String;
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$reqHeaders:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v3, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 175
    .end local v3    # "h":Ljava/lang/String;
    .end local v5    # "u":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    iput-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->err:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_2
    move-object v8, v9

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v8

    .line 152
    .restart local v5    # "u":Ljava/net/URL;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const-string v8, "User-Agent"

    const-string v10, "http.agent"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$timeout:I

    if-lez v8, :cond_3

    .line 155
    iget v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$timeout:I

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    iget v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$timeout:I

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 158
    :cond_3
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$method:Ljava/lang/String;

    const-string v10, "POST"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 160
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 162
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 163
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v10, "UTF-8"

    invoke-direct {v8, v4, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_4
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$data:Ljava/lang/Object;

    check-cast v8, Lorg/json/JSONObject;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    .line 166
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 167
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v6, v7

    .line 170
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    iput v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->status:I

    .line 171
    iget-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$formatter:Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;->format(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->response:Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->responseHeaders:Ljava/util/Map;

    .line 173
    const-string v8, "success"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 186
    :catch_1
    move-exception v9

    goto :goto_3

    .line 178
    .end local v5    # "u":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    :try_start_7
    new-instance v8, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->err:Ljava/lang/Exception;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_5
    move-object v8, v9

    .line 187
    goto/16 :goto_3

    .line 183
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    .line 184
    :goto_6
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 187
    :cond_6
    :goto_7
    throw v8

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto/16 :goto_2

    .local v2, "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 183
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "os":Ljava/io/OutputStream;
    .restart local v5    # "u":Ljava/net/URL;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_6

    .line 178
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 175
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallback;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallback;

    iget-object v1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->err:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/networking/AsyncCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallback;

    iget v1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->status:I

    iget-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->response:Ljava/lang/Object;

    iget-object v3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$1;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/mobfox/sdk/networking/AsyncCallback;->onComplete(ILjava/lang/Object;Ljava/util/Map;)V

    goto :goto_0
.end method
