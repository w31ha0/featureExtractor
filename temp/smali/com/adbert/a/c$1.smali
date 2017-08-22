.class Lcom/adbert/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/a/c;->a(Lcom/adbert/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/c$a;

.field final synthetic b:Lcom/adbert/a/c;


# direct methods
.method constructor <init>(Lcom/adbert/a/c;Lcom/adbert/a/c$a;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    iput-object p2, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-virtual {v0}, Lcom/adbert/a/c$a;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v2

    .line 133
    :goto_0
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v7, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    iget-object v8, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-static {v7, v6, v8}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;Ljava/net/URL;Lcom/adbert/a/c$a;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 136
    iget-object v7, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    iget-object v8, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-static {v7, v1, v8}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V

    .line 137
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 138
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 139
    const/16 v8, 0x12e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x12d

    if-eq v7, v8, :cond_0

    const/16 v8, 0x12f

    if-eq v7, v8, :cond_0

    const/16 v8, 0x133

    if-ne v7, v8, :cond_1

    .line 143
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/net/URL;

    const-string v7, "Location"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v7, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v7, v0}, Lcom/adbert/a/c;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v0, v7}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;I)V

    .line 153
    iget-object v0, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    iget-object v7, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-static {v0, v6, v1, v7}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/adbert/a/c$a;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    if-eqz v1, :cond_2

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_2
    if-eqz v2, :cond_3

    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_3
    if-eqz v2, :cond_4

    .line 169
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_4
    if-eqz v2, :cond_5

    .line 172
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v0}, Lcom/adbert/a/c;->b()Lcom/adbert/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    new-instance v1, Lcom/adbert/a/c$1$1;

    invoke-direct {v1, p0}, Lcom/adbert/a/c$1$1;-><init>(Lcom/adbert/a/c$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/adbert/a/c$1;->a:Lcom/adbert/a/c$a;

    invoke-virtual {v0}, Lcom/adbert/a/c$a;->a()Lcom/adbert/a/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-static {v0}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    const-string v0, "CustomConnection_Result"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v2}, Lcom/adbert/a/c;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-virtual {v2}, Lcom/adbert/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_7
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-static {v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 155
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    const/16 v7, -0x3e9

    invoke-static {v6, v7}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;I)V

    .line 156
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_8
    if-eqz v2, :cond_9

    .line 165
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_9
    if-eqz v2, :cond_a

    .line 169
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_a
    if-eqz v2, :cond_5

    .line 172
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 174
    :catch_2
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-static {v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 157
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 158
    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_b
    if-eqz v2, :cond_c

    .line 165
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_c
    if-eqz v2, :cond_d

    .line 169
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_d
    if-eqz v2, :cond_5

    .line 172
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 174
    :catch_4
    move-exception v0

    .line 175
    iget-object v1, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-static {v1}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 160
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_e

    .line 161
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 164
    :cond_e
    if-eqz v2, :cond_f

    .line 165
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 168
    :cond_f
    if-eqz v2, :cond_10

    .line 169
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_10
    if-eqz v2, :cond_11

    .line 172
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 178
    :cond_11
    :goto_5
    throw v0

    .line 174
    :catch_5
    move-exception v1

    .line 175
    iget-object v2, p0, Lcom/adbert/a/c$1;->b:Lcom/adbert/a/c;

    invoke-static {v2}, Lcom/adbert/a/c;->a(Lcom/adbert/a/c;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 176
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 160
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 157
    :catch_6
    move-exception v0

    goto :goto_3

    .line 154
    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method
