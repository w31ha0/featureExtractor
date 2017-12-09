.class final Lcom/wooboo/adlib_android/c$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooboo/adlib_android/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/wooboo/adlib_android/c;


# direct methods
.method constructor <init>(Lcom/wooboo/adlib_android/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v11, "|"

    const-string v8, "Wooboo SDK"

    .line 68
    .line 69
    iget-object v0, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->a(Lcom/wooboo/adlib_android/c;)B

    move-result v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(Lcom/wooboo/adlib_android/c;)Lcom/wooboo/adlib_android/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(Lcom/wooboo/adlib_android/c;)Lcom/wooboo/adlib_android/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wooboo/adlib_android/c$a;->a()V

    .line 77
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v2}, Lcom/wooboo/adlib_android/c;->c(Lcom/wooboo/adlib_android/c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    sget v2, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->a:I

    if-ne v2, v3, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12

    .line 80
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 81
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 82
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 113
    :goto_1
    if-ne v1, v9, :cond_6

    .line 115
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 149
    :goto_2
    if-eqz v0, :cond_1

    .line 150
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 151
    packed-switch v1, :pswitch_data_0

    :goto_3
    move-object v1, v0

    move-object v0, v2

    .line 255
    :goto_4
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    :try_start_3
    iget-object v2, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v2}, Lcom/wooboo/adlib_android/c;->d(Lcom/wooboo/adlib_android/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    .line 262
    :cond_1
    :goto_5
    iget-object v0, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(Lcom/wooboo/adlib_android/c;)Lcom/wooboo/adlib_android/c$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->b(Lcom/wooboo/adlib_android/c;)Lcom/wooboo/adlib_android/c$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/wooboo/adlib_android/c$a;->b()V

    .line 265
    :cond_2
    return-void

    .line 83
    :cond_3
    :try_start_4
    sget v2, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->b:I

    if-eq v2, v3, :cond_4

    .line 84
    sget v2, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->c:I

    if-ne v2, v3, :cond_5

    .line 85
    :cond_4
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 86
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.172"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 85
    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 87
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_12

    .line 88
    const/4 v2, 0x1

    :try_start_5
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 89
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 90
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    :goto_6
    const-string v2, "Wooboo SDK"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed click URL.  Will try to follow anyway."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v3}, Lcom/wooboo/adlib_android/c;->c(Lcom/wooboo/adlib_android/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    goto/16 :goto_1

    .line 91
    :cond_5
    :try_start_6
    sget v2, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->d:I

    if-ne v2, v3, :cond_12

    .line 92
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 93
    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.200"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 92
    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 94
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12

    .line 95
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 96
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    invoke-static {}, Lcom/wooboo/adlib_android/c;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 109
    :catch_1
    move-exception v2

    :goto_7
    const-string v2, "Wooboo SDK"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not determine final click destination URL.  Will try to follow anyway.  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/wooboo/adlib_android/c$1;->a:Lcom/wooboo/adlib_android/c;

    invoke-static {v3}, Lcom/wooboo/adlib_android/c;->c(Lcom/wooboo/adlib_android/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    goto/16 :goto_1

    .line 118
    :catch_2
    move-exception v0

    const-string v0, "Wooboo SDK"

    .line 119
    const-string v0, "Could not get ad click url from wooboo server."

    .line 118
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto/16 :goto_2

    .line 124
    :cond_6
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 125
    if-eqz v2, :cond_11

    .line 126
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 127
    new-array v4, v3, [B

    move v5, v10

    .line 128
    :goto_8
    if-lt v5, v3, :cond_8

    .line 131
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 137
    :goto_9
    if-eqz v2, :cond_7

    .line 138
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_7
    if-eqz v0, :cond_c

    .line 141
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v0, v3

    goto/16 :goto_2

    .line 129
    :cond_8
    :try_start_b
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 128
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 134
    :catch_3
    move-exception v2

    move-object v2, v7

    :goto_a
    :try_start_c
    const-string v3, "Wooboo SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection off "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 137
    if-eqz v2, :cond_9

    .line 138
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_9
    if-eqz v0, :cond_10

    .line 141
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v0, v7

    goto/16 :goto_2

    .line 144
    :catch_4
    move-exception v0

    const-string v0, "Wooboo SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not close stream"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    goto/16 :goto_2

    .line 135
    :catchall_0
    move-exception v1

    move-object v2, v7

    .line 137
    :goto_b
    if-eqz v2, :cond_a

    .line 138
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 140
    :cond_a
    if-eqz v0, :cond_b

    .line 141
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 147
    :cond_b
    :goto_c
    throw v1

    .line 144
    :catch_5
    move-exception v0

    const-string v0, "Wooboo SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not close stream"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v0, "Wooboo SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not close stream"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    .line 155
    :pswitch_0
    :try_start_f
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_7

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 157
    :catch_7
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 160
    goto/16 :goto_4

    .line 168
    :pswitch_1
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_8

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 171
    :catch_8
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 174
    goto/16 :goto_4

    .line 177
    :pswitch_2
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    move-result-object v0

    .line 178
    :try_start_12
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 180
    :catch_9
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 181
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 183
    goto/16 :goto_4

    .line 185
    :pswitch_3
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 188
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 190
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    .line 196
    :goto_e
    :try_start_13
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v4, "com.google.android.apps.maps"

    .line 198
    const-string v5, "com.google.android.maps.MapsActivity"

    .line 197
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v3, ")&z=22"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 193
    :cond_d
    const-string v1, "I am here"

    move-object v3, v1

    move-object v1, v0

    goto :goto_e

    .line 203
    :catch_a
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 206
    goto/16 :goto_4

    .line 209
    :pswitch_4
    :try_start_14
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 210
    :try_start_15
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_4

    .line 211
    :catch_b
    move-exception v1

    .line 212
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 214
    goto/16 :goto_4

    .line 218
    :pswitch_5
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 219
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 220
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 221
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_10
    :try_start_16
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 226
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 227
    :catch_c
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 230
    goto/16 :goto_4

    .line 233
    :pswitch_6
    :try_start_17
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 238
    invoke-static {v0}, Lcom/wooboo/adlib_android/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 240
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 241
    const/4 v5, 0x2

    aget-object v1, v1, v5

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    .line 243
    :goto_11
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 245
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "message/rfc882"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 249
    :catch_d
    move-exception v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 258
    :catch_e
    move-exception v0

    .line 259
    const-string v2, "Wooboo SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not intent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 211
    :catch_f
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_f

    .line 180
    :catch_10
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_d

    .line 135
    :catchall_1
    move-exception v1

    goto/16 :goto_b

    .line 134
    :catch_11
    move-exception v3

    goto/16 :goto_a

    .line 109
    :catch_12
    move-exception v0

    move-object v0, v7

    goto/16 :goto_7

    .line 103
    :catch_13
    move-exception v0

    move-object v0, v7

    goto/16 :goto_6

    :cond_e
    move-object v1, v7

    move-object v3, v7

    move-object v4, v7

    goto :goto_11

    :cond_f
    move-object v1, v7

    move-object v3, v7

    goto/16 :goto_10

    :cond_10
    move-object v0, v7

    goto/16 :goto_2

    :cond_11
    move-object v3, v7

    goto/16 :goto_9

    :cond_12
    move-object v0, v7

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
