.class public final Lvpadn/bn;
.super Ljava/lang/Object;
.source "VponGuid.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {}, Lvpadn/bn;->b()Ljava/io/File;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v2, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    const-string v5, ""

    .line 87
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    :goto_2
    :try_start_3
    const-string v4, "VponGuid"

    const-string v5, "loadGuid throw UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 104
    if-eqz v3, :cond_2

    .line 106
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 112
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 114
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    .line 116
    const-string v2, "VponGuid"

    const-string v3, "loadGuid ir.close throw IOException"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    if-eqz v3, :cond_4

    .line 106
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 112
    :cond_4
    :goto_4
    if-eqz v2, :cond_0

    .line 114
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 115
    :catch_2
    move-exception v1

    .line 116
    const-string v2, "VponGuid"

    const-string v3, "loadGuid ir.close throw IOException"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    :catch_3
    move-exception v1

    .line 108
    const-string v3, "VponGuid"

    const-string v4, "loadGuid in.close throw IOException"

    invoke-static {v3, v4, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 107
    :catch_4
    move-exception v1

    .line 108
    const-string v3, "VponGuid"

    const-string v4, "loadGuid in.close throw IOException"

    invoke-static {v3, v4, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 97
    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 98
    :goto_5
    :try_start_9
    const-string v4, "VponGuid"

    const-string v5, "loadGuid throw FileNotFoundException"

    invoke-static {v4, v5, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 104
    if-eqz v3, :cond_5

    .line 106
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 112
    :cond_5
    :goto_6
    if-eqz v2, :cond_0

    .line 114
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 115
    :catch_6
    move-exception v1

    .line 116
    const-string v2, "VponGuid"

    const-string v3, "loadGuid ir.close throw IOException"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 107
    :catch_7
    move-exception v1

    .line 108
    const-string v3, "VponGuid"

    const-string v4, "loadGuid in.close throw IOException"

    invoke-static {v3, v4, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 100
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 101
    :goto_7
    :try_start_c
    const-string v4, "VponGuid"

    const-string v5, "loadGuid throw IOException"

    invoke-static {v4, v5, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 104
    if-eqz v3, :cond_6

    .line 106
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 112
    :cond_6
    :goto_8
    if-eqz v2, :cond_0

    .line 114
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_0

    .line 115
    :catch_9
    move-exception v1

    .line 116
    const-string v2, "VponGuid"

    const-string v3, "loadGuid ir.close throw IOException"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 107
    :catch_a
    move-exception v1

    .line 108
    const-string v3, "VponGuid"

    const-string v4, "loadGuid in.close throw IOException"

    invoke-static {v3, v4, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 104
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_9
    if-eqz v3, :cond_7

    .line 106
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 112
    :cond_7
    :goto_a
    if-eqz v2, :cond_8

    .line 114
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 118
    :cond_8
    :goto_b
    throw v0

    .line 107
    :catch_b
    move-exception v1

    .line 108
    const-string v3, "VponGuid"

    const-string v4, "loadGuid in.close throw IOException"

    invoke-static {v3, v4, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 115
    :catch_c
    move-exception v1

    .line 116
    const-string v2, "VponGuid"

    const-string v3, "loadGuid ir.close throw IOException"

    invoke-static {v2, v3, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 104
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 100
    :catch_d
    move-exception v1

    move-object v2, v0

    goto :goto_7

    :catch_e
    move-exception v1

    goto :goto_7

    .line 97
    :catch_f
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_10
    move-exception v1

    goto :goto_5

    .line 94
    :catch_11
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :catch_12
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/vpadn006"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/vpadn006"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lvpadn/bn;->a(Ljava/io/File;)Z

    .line 40
    :cond_0
    invoke-static {}, Lvpadn/bn;->b()Ljava/io/File;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 46
    :cond_1
    const/4 v2, 0x0

    .line 48
    :try_start_1
    new-instance v1, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 67
    :cond_2
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 51
    :goto_1
    :try_start_4
    const-string v2, "VponGuid"

    const-string v3, "saveGuid throw FileNotFoundException"

    invoke-static {v2, v3, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 62
    :catch_2
    move-exception v0

    .line 63
    const-string v1, "VponGuid"

    const-string v2, "saveGuid throw NullPointerException"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    :catch_3
    move-exception v0

    .line 65
    const-string v1, "VponGuid"

    const-string v2, "saveGuid throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 50
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 134
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    aget-object v2, v1, v0

    invoke-static {v2}, Lvpadn/bn;->a(Ljava/io/File;)Z

    .line 133
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method private static b()Ljava/io/File;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/File;

    const-string v2, "/vpadn006"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v2, "vpadnguid006"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    return-object v0
.end method
