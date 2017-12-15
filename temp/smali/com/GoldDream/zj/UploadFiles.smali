.class public Lcom/GoldDream/zj/UploadFiles;
.super Ljava/lang/Object;
.source "UploadFiles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "uploadUrl"    # Ljava/lang/String;
    .param p2, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v10, "\r\n"

    .line 29
    .local v10, "end":Ljava/lang/String;
    const-string v16, "--"

    .line 30
    .local v16, "twoHyphens":Ljava/lang/String;
    const-string v4, "******"

    .line 33
    .local v4, "boundary":Ljava/lang/String;
    :try_start_0
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    .line 34
    check-cast v12, Ljava/net/HttpURLConnection;

    .line 36
    .local v12, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 37
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 38
    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    const-string v18, "POST"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    const-string v18, "Connection"

    const-string v19, "Keep-Alive"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v18, "Charset"

    const-string v19, "UTF-8"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v18, "Content-Type"

    .line 43
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "multipart/form-data;boundary="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 42
    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v8, Ljava/io/DataOutputStream;

    .line 46
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v18

    .line 45
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 47
    .local v8, "dos":Ljava/io/DataOutputStream;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 48
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v19, "/"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 50
    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 48
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 53
    new-instance v11, Ljava/io/FileInputStream;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 54
    .local v11, "fis":Ljava/io/FileInputStream;
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object v6, v0

    .line 55
    .local v6, "buffer":[B
    const/4 v7, 0x0

    .line 56
    .local v7, "count":I
    :goto_0
    invoke-virtual {v11, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v18, -0x1

    move v0, v7

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 63
    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 64
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 67
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 68
    .local v13, "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v18, "utf-8"

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 69
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 70
    .local v5, "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 74
    .local v15, "result":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 75
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 83
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "result":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 58
    .restart local v6    # "buffer":[B
    .restart local v7    # "count":I
    .restart local v8    # "dos":Ljava/io/DataOutputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_0
    const/16 v18, 0x0

    move-object v0, v8

    move-object v1, v6

    move/from16 v2, v18

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v6    # "buffer":[B
    .end local v7    # "count":I
    .end local v8    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 79
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
