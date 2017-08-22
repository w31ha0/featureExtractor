.class Lc/FileTransfer$1;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/FileTransfer;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/FileTransfer$b;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/net/URL;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lorg/json/JSONObject;

.field final synthetic g:Lorg/json/JSONObject;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lc/FileTransfer;


# direct methods
.method constructor <init>(Lc/FileTransfer;Lc/FileTransfer$b;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lc/FileTransfer$1;->n:Lc/FileTransfer;

    iput-object p2, p0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iput-boolean p3, p0, Lc/FileTransfer$1;->b:Z

    iput-boolean p4, p0, Lc/FileTransfer$1;->c:Z

    iput-object p5, p0, Lc/FileTransfer$1;->d:Ljava/net/URL;

    iput-object p6, p0, Lc/FileTransfer$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lc/FileTransfer$1;->f:Lorg/json/JSONObject;

    iput-object p8, p0, Lc/FileTransfer$1;->g:Lorg/json/JSONObject;

    iput-object p9, p0, Lc/FileTransfer$1;->h:Ljava/lang/String;

    iput-object p10, p0, Lc/FileTransfer$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lc/FileTransfer$1;->j:Ljava/lang/String;

    iput-object p12, p0, Lc/FileTransfer$1;->k:Ljava/lang/String;

    iput-boolean p13, p0, Lc/FileTransfer$1;->l:Z

    iput-object p14, p0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iget-boolean v2, v2, Lc/FileTransfer$b;->g:Z

    if-eqz v2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v5, 0x0

    .line 218
    const/4 v4, 0x0

    .line 219
    const/4 v3, 0x0

    .line 220
    const/4 v6, 0x0

    .line 221
    const/4 v9, -0x1

    .line 224
    :try_start_0
    new-instance v12, Lvpadn/k;

    invoke-direct {v12}, Lvpadn/k;-><init>()V

    .line 225
    new-instance v13, Lvpadn/j;

    invoke-direct {v13}, Lvpadn/j;-><init>()V

    .line 229
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v2, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->c:Z

    if-nez v2, :cond_4

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->d:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object v7, v3

    move-object v8, v4

    move-object v4, v2

    .line 253
    :goto_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 256
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 262
    const-string v2, "POST"

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 263
    const-string v2, "Content-Type"

    const-string v3, "multipart/form-data;boundary=+++++"

    invoke-virtual {v4, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_2

    .line 268
    const-string v3, "Cookie"

    invoke-virtual {v4, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->f:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    if-eqz v2, :cond_6

    .line 274
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->f:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 275
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 277
    if-nez v2, :cond_15

    .line 278
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->f:Lorg/json/JSONObject;

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v3, v2

    .line 281
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_3

    .line 283
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 238
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->d:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 239
    invoke-static {v2}, Lc/FileTransfer;->a(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    move-result-object v3

    .line 241
    :try_start_4
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-result-object v4

    .line 243
    :try_start_5
    invoke-static {}, Lc/FileTransfer;->a()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    move-object v7, v3

    move-object v8, v4

    move-object v4, v2

    .line 245
    goto/16 :goto_1

    .line 249
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->d:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    move-object v7, v3

    move-object v8, v4

    move-object v4, v2

    goto/16 :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 295
    :cond_6
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_f

    .line 297
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->g:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 298
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 299
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "headers"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 301
    const-string v10, "--"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "+++++"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lc/FileTransfer$1;->g:Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_f

    goto :goto_4

    .line 308
    :catch_1
    move-exception v2

    .line 309
    :try_start_9
    const-string v5, "FileTransfer"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    :cond_8
    const-string v2, "--"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+++++"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->h:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, " filename=\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v2, "Content-Type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->j:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 317
    const-string v2, "\r\n--+++++--\r\n"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->n:Lc/FileTransfer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/FileTransfer;->a(Lc/FileTransfer;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 323
    array-length v2, v10

    array-length v5, v14

    add-int/2addr v5, v2

    .line 324
    instance-of v2, v3, Ljava/io/FileInputStream;

    if-eqz v2, :cond_9

    .line 325
    move-object v0, v3

    check-cast v0, Ljava/io/FileInputStream;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v2, v0

    add-int/2addr v5, v2

    .line 326
    const/4 v2, 0x1

    :try_start_a
    invoke-virtual {v13, v2}, Lvpadn/j;->a(Z)V

    .line 327
    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lvpadn/j;->b(J)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    move v9, v5

    .line 329
    :cond_9
    :try_start_b
    const-string v2, "FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content Length: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->l:Z

    if-eqz v2, :cond_c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v2, v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v2, :cond_c

    :cond_a
    const/4 v2, 0x1

    .line 334
    :goto_5
    if-nez v2, :cond_b

    const/4 v2, -0x1

    if-ne v9, v2, :cond_d

    :cond_b
    const/4 v2, 0x1

    .line 336
    :goto_6
    if-eqz v2, :cond_e

    .line 337
    const/16 v2, 0x4000

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 340
    const-string v2, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v4, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    .line 347
    const/4 v5, 0x0

    .line 349
    :try_start_c
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 350
    move-object/from16 v0, p0

    iget-object v11, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    monitor-enter v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 351
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iget-boolean v2, v2, Lc/FileTransfer$b;->g:Z

    if-eqz v2, :cond_f

    .line 352
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 393
    :try_start_e
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v5}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_f
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 457
    if-eqz v4, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v2, :cond_0

    move-object v2, v4

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 333
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 334
    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    .line 342
    :cond_e
    :try_start_10
    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    goto :goto_7

    .line 435
    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v5, v8

    move-object v2, v4

    move-object v4, v7

    .line 436
    :goto_8
    :try_start_11
    sget v6, Lc/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lc/FileTransfer$1;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc/FileTransfer$1;->e:Ljava/lang/String;

    invoke-static {v6, v7, v8, v2}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v6

    .line 437
    const-string v7, "FileTransfer"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    new-instance v7, Lvpadn/w;

    sget-object v8, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v7, v8, v6}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v7}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_12
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 457
    if-eqz v2, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v3, :cond_0

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 455
    :catchall_0
    move-exception v2

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v2

    .line 354
    :cond_f
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iput-object v5, v2, Lc/FileTransfer$b;->f:Ljava/io/OutputStream;

    .line 355
    monitor-exit v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 357
    :try_start_15
    invoke-virtual {v5, v10}, Ljava/io/OutputStream;->write([B)V

    .line 358
    array-length v2, v10

    add-int/2addr v6, v2

    .line 361
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 362
    const/16 v10, 0x4000

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 363
    new-array v15, v2, [B

    .line 366
    const/4 v10, 0x0

    invoke-virtual {v3, v15, v10, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 368
    const-wide/16 v10, 0x0

    .line 369
    :goto_9
    if-lez v2, :cond_11

    .line 370
    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lvpadn/k;->a(J)V

    .line 371
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 372
    add-int/2addr v6, v2

    .line 373
    int-to-long v0, v6

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x19000

    add-long v18, v18, v10

    cmp-long v2, v16, v18

    if-lez v2, :cond_10

    .line 374
    int-to-long v10, v6

    .line 375
    const-string v2, "FileTransfer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Uploaded "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_10
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 378
    const/16 v16, 0x4000

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 379
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 382
    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lvpadn/j;->a(J)V

    .line 383
    new-instance v16, Lvpadn/w;

    sget-object v17, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {v13}, Lvpadn/j;->a()Lorg/json/JSONObject;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    .line 384
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lvpadn/w;->a(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_9

    .line 393
    :catchall_1
    move-exception v2

    :try_start_16
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v5}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 439
    :catch_3
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move v4, v9

    .line 440
    :goto_a
    :try_start_17
    sget v5, Lc/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lc/FileTransfer$1;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc/FileTransfer$1;->e:Ljava/lang/String;

    invoke-static {v5, v9, v10, v2}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v5

    .line 441
    const-string v9, "FileTransfer"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const-string v3, "FileTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed after uploading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    new-instance v4, Lvpadn/w;

    sget-object v6, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v4, v6, v5}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_18
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 457
    if-eqz v2, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v3, :cond_0

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 355
    :catchall_2
    move-exception v2

    :try_start_19
    monitor-exit v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    throw v2

    .line 389
    :cond_11
    invoke-virtual {v5, v14}, Ljava/io/OutputStream;->write([B)V

    .line 390
    array-length v2, v14

    add-int/2addr v6, v2

    .line 391
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 393
    :try_start_1b
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v5}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    const/4 v3, 0x0

    iput-object v3, v2, Lc/FileTransfer$b;->f:Ljava/io/OutputStream;

    .line 397
    const-string v2, "FileTransfer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 402
    const-string v3, "FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v3, "FileTransfer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response headers: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 404
    const/4 v3, 0x0

    .line 406
    :try_start_1c
    invoke-static {v4}, Lc/FileTransfer;->a(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 407
    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    monitor-enter v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 408
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v10, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iget-boolean v10, v10, Lc/FileTransfer$b;->g:Z

    if-eqz v10, :cond_12

    .line 409
    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 423
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    const/4 v5, 0x0

    iput-object v5, v2, Lc/FileTransfer$b;->e:Ljava/io/InputStream;

    .line 424
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_1f
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 457
    if-eqz v4, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v2, :cond_0

    .line 461
    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v4, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v4, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 455
    :catchall_3
    move-exception v2

    :try_start_20
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    throw v2

    .line 411
    :cond_12
    :try_start_21
    move-object/from16 v0, p0

    iget-object v10, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    iput-object v3, v10, Lc/FileTransfer$b;->e:Ljava/io/InputStream;

    .line 412
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    .line 414
    :try_start_22
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x400

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-direct {v5, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 415
    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 418
    :goto_b
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_13

    .line 419
    const/4 v13, 0x0

    invoke-virtual {v5, v10, v13, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    goto :goto_b

    .line 423
    :catchall_4
    move-exception v2

    :try_start_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    const/4 v10, 0x0

    iput-object v10, v5, Lc/FileTransfer$b;->e:Ljava/io/InputStream;

    .line 424
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    throw v2
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_2
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_8
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    .line 444
    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    .line 445
    :goto_c
    :try_start_24
    const-string v4, "FileTransfer"

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    new-instance v4, Lvpadn/w;

    sget-object v5, Lvpadn/w$a;->i:Lvpadn/w$a;

    invoke-direct {v4, v5}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    invoke-virtual {v3, v4}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_25
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 457
    if-eqz v2, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v3, :cond_0

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 412
    :catchall_5
    move-exception v2

    :try_start_26
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    :try_start_27
    throw v2

    .line 421
    :cond_13
    const-string v10, "UTF-8"

    invoke-virtual {v5, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    move-result-object v5

    .line 423
    :try_start_28
    move-object/from16 v0, p0

    iget-object v10, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    const/4 v11, 0x0

    iput-object v11, v10, Lc/FileTransfer$b;->e:Ljava/io/InputStream;

    .line 424
    invoke-static {v3}, Lc/FileTransfer;->a(Ljava/io/Closeable;)V

    .line 427
    const-string v3, "FileTransfer"

    const-string v10, "got response from server"

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v3, "FileTransfer"

    const/4 v10, 0x0

    const/16 v11, 0x100

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v12, v2}, Lvpadn/k;->a(I)V

    .line 432
    invoke-virtual {v12, v5}, Lvpadn/k;->a(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    new-instance v3, Lvpadn/w;

    sget-object v5, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {v12}, Lvpadn/k;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v3, v5, v10}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_2
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_8
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_29
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    .line 457
    if-eqz v4, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v2, :cond_0

    .line 461
    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v4, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v4, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 455
    :catchall_6
    move-exception v2

    :try_start_2a
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    throw v2

    :catchall_7
    move-exception v2

    :try_start_2b
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    throw v2

    :catchall_8
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    throw v2

    :catchall_9
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    throw v2

    .line 447
    :catch_5
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    .line 449
    :goto_d
    :try_start_2e
    sget v4, Lc/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc/FileTransfer$1;->e:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v4

    .line 450
    const-string v5, "FileTransfer"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer$1;->a:Lc/FileTransfer$b;

    new-instance v5, Lvpadn/w;

    sget-object v6, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v5, v6, v4}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v5}, Lc/FileTransfer$b;->a(Lvpadn/w;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    .line 453
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 454
    :try_start_2f
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    .line 457
    if-eqz v2, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v3, :cond_0

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_0

    .line 455
    :catchall_a
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    throw v2

    .line 453
    :catchall_b
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    :goto_e
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 454
    :try_start_31
    invoke-static {}, Lc/FileTransfer;->b()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lc/FileTransfer$1;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    .line 457
    if-eqz v2, :cond_14

    .line 460
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc/FileTransfer$1;->c:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc/FileTransfer$1;->b:Z

    if-eqz v4, :cond_14

    .line 461
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 462
    invoke-virtual {v2, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 463
    invoke-virtual {v2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 464
    :cond_14
    throw v3

    .line 455
    :catchall_c
    move-exception v2

    :try_start_32
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    throw v2

    .line 453
    :catchall_d
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :catchall_e
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto :goto_e

    :catchall_f
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_e

    :catchall_10
    move-exception v3

    move-object v7, v4

    move-object v8, v5

    goto :goto_e

    :catchall_11
    move-exception v3

    goto :goto_e

    .line 447
    :catch_6
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_d

    :catch_7
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_d

    :catch_8
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_d

    .line 444
    :catch_9
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_c

    :catch_a
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_c

    :catch_b
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_c

    .line 439
    :catch_c
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move v4, v9

    move-object v2, v5

    goto/16 :goto_a

    :catch_d
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move v4, v9

    move-object v2, v5

    goto/16 :goto_a

    :catch_e
    move-exception v2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v2

    move v4, v9

    move-object v2, v5

    goto/16 :goto_a

    :catch_f
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move v4, v5

    goto/16 :goto_a

    .line 435
    :catch_10
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_8

    :catch_11
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_8

    :catch_12
    move-exception v2

    move-object/from16 v20, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_8

    :cond_15
    move-object v3, v2

    goto/16 :goto_2
.end method
