.class public Lcom/android/main/APKInstaller;
.super Ljava/lang/Object;
.source "APKInstaller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 21
    const-string v8, ""

    .line 22
    .local v8, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/ProcessBuilder;

    invoke-direct {v6, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 23
    .local v6, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v5, 0x0

    .line 24
    .local v5, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 25
    .local v3, "errIs":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 27
    .local v4, "inIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, -0x1

    .line 29
    .local v7, "read":I
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 31
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 34
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 36
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 39
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 40
    .local v1, "data":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 50
    :cond_0
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 56
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 57
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_2
    move-object v8, v9

    .line 60
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v7    # "read":I
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v8

    .line 32
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    :cond_4
    :try_start_2
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 42
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    if-eqz v3, :cond_5

    .line 48
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 50
    :cond_5
    if-eqz v4, :cond_6

    .line 51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 56
    :cond_6
    :goto_4
    if-eqz v5, :cond_3

    .line 57
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    .line 37
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    :cond_7
    :try_start_5
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 43
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    if-eqz v3, :cond_8

    .line 48
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 50
    :cond_8
    if-eqz v4, :cond_9

    .line 51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 56
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    if-eqz v5, :cond_3

    .line 57
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_3

    .line 53
    .local v2, "e":Ljava/io/IOException;
    :catch_2
    move-exception v10

    move-object v2, v10

    .line 54
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    move-object v2, v10

    .line 54
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 45
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 47
    if-eqz v3, :cond_a

    .line 48
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 50
    :cond_a
    if-eqz v4, :cond_b

    .line 51
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 56
    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    .line 57
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 59
    :cond_c
    throw v10

    .line 53
    :catch_4
    move-exception v11

    move-object v2, v11

    .line 54
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 53
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v7    # "read":I
    .restart local v9    # "result":Ljava/lang/String;
    :catch_5
    move-exception v10

    move-object v2, v10

    .line 54
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static install(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "apkAbsolutePath"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pm"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "install"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "-r"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object p0, v0, v2

    .line 16
    .local v0, "args":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/main/APKInstaller;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "result":Ljava/lang/String;
    return-object v1
.end method
