.class public Lcom/biznessapps/utils/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static final CACHED_IMAGES:Ljava/lang/String; = "cached_images_"

.field private static final DCIM:Ljava/lang/String; = "/DCIM/"

.field private static final DEFAULT_NAME:Ljava/lang/String; = "imageN"

.field private static final FILE_1_MB:I = 0x100000

.field private static final FILE_200_KB:I = 0x32000

.field private static final FILE_2_MB:I = 0x200000

.field private static final FILE_300_KB:I = 0x4b000

.field private static final FILE_3_MB:I = 0x300000

.field private static final FILE_400_KB:I = 0x64000

.field private static final FILE_4_MB:I = 0x400000

.field private static final FILE_500_KB:I = 0x7d000

.field private static final FILE_5_MB:I = 0x500000

.field private static final FILE_700_KB:I = 0xaf000

.field private static final JPG_EXTENTION:Ljava/lang/String; = ".jpg"

.field private static appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "resource"    # Ljava/io/Closeable;

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 204
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/4 p0, 0x0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Tag"

    const-string v2, "Unable to close resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const v2, 0xffff

    new-array v0, v2, [B

    .line 215
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-lez v1, :cond_0

    .line 216
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method public static getBitmapByData(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "useMemory"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    :try_start_0
    invoke-static {p0, v11}, Lcom/biznessapps/android/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 132
    .local v3, "decodedButtonImage":[B
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! decode in memory"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/high16 v11, 0x10000

    new-array v11, v11, [B

    iput-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 135
    const/4 v11, 0x3

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 136
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 137
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 139
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    move-object v1, v2

    .line 193
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "decodedButtonImage":[B
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v1

    .line 147
    :cond_1
    const/4 v4, 0x0

    .line 149
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_2

    .line 150
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 153
    .local v7, "fileLength":J
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    .line 157
    .local v10, "sampleSize":I
    const-wide/32 v11, 0x32000

    cmp-long v11, v7, v11

    if-gez v11, :cond_3

    .line 180
    :goto_1
    const/high16 v11, 0x10000

    new-array v11, v11, [B

    iput-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 181
    iput v10, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 182
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 183
    invoke-static {p0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 185
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileLength":J
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "sampleSize":I
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    move-object v1, v4

    .line 193
    goto :goto_0

    .line 159
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileLength":J
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v10    # "sampleSize":I
    :cond_3
    const-wide/32 v11, 0x32000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_4

    const-wide/32 v11, 0x4b000

    cmp-long v11, v7, v11

    if-gez v11, :cond_4

    .line 160
    const/4 v10, 0x2

    goto :goto_1

    .line 161
    :cond_4
    const-wide/32 v11, 0x4b000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_5

    const-wide/32 v11, 0x64000

    cmp-long v11, v7, v11

    if-gez v11, :cond_5

    .line 162
    const/4 v10, 0x3

    goto :goto_1

    .line 163
    :cond_5
    const-wide/32 v11, 0x64000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_6

    const-wide/32 v11, 0x7d000

    cmp-long v11, v7, v11

    if-gez v11, :cond_6

    .line 164
    const/4 v10, 0x4

    goto :goto_1

    .line 165
    :cond_6
    const-wide/32 v11, 0x7d000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_7

    const-wide/32 v11, 0xaf000

    cmp-long v11, v7, v11

    if-gez v11, :cond_7

    .line 166
    const/4 v10, 0x6

    goto :goto_1

    .line 167
    :cond_7
    const-wide/32 v11, 0xaf000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_8

    const-wide/32 v11, 0x100000

    cmp-long v11, v7, v11

    if-gez v11, :cond_8

    .line 168
    const/16 v10, 0x8

    goto :goto_1

    .line 169
    :cond_8
    const-wide/32 v11, 0x100000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_9

    const-wide/32 v11, 0x200000

    cmp-long v11, v7, v11

    if-gez v11, :cond_9

    .line 170
    const/16 v10, 0xa

    goto :goto_1

    .line 171
    :cond_9
    const-wide/32 v11, 0x200000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_a

    const-wide/32 v11, 0x300000

    cmp-long v11, v7, v11

    if-gez v11, :cond_a

    .line 172
    const/16 v10, 0xc

    goto/16 :goto_1

    .line 173
    :cond_a
    const-wide/32 v11, 0x300000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_b

    const-wide/32 v11, 0x400000

    cmp-long v11, v7, v11

    if-gez v11, :cond_b

    .line 174
    const/16 v10, 0xe

    goto/16 :goto_1

    .line 175
    :cond_b
    const-wide/32 v11, 0x400000

    cmp-long v11, v7, v11

    if-ltz v11, :cond_c

    const-wide/32 v11, 0x500000

    cmp-long v11, v7, v11

    if-gez v11, :cond_c

    .line 176
    const/16 v10, 0x10

    goto/16 :goto_1

    .line 178
    :cond_c
    const/16 v10, 0x14

    goto/16 :goto_1

    .line 190
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileLength":J
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "sampleSize":I
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 142
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method

.method private static getExternalPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "extStorageState":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 113
    .local v2, "path":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .end local v2    # "path":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public static saveAndGetFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 68
    :cond_0
    const/4 v5, 0x0

    .line 105
    :goto_0
    return-object v5

    .line 70
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imageN"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 72
    .local v6, "folderPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "fileDir":Ljava/io/File;
    invoke-static {}, Lcom/biznessapps/utils/MemoryUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 74
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/utils/MemoryUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/DCIM/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cached_images_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 77
    .end local v2    # "fileDir":Ljava/io/File;
    .local v3, "fileDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    move-object v2, v3

    .line 88
    .end local v3    # "fileDir":Ljava/io/File;
    .restart local v2    # "fileDir":Ljava/io/File;
    :goto_1
    const/4 v7, 0x0

    .line 89
    .local v7, "output":Lcom/biznessapps/android/Base64OutputStream;
    const/4 v5, 0x0

    .line 91
    .local v5, "filePath":Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 95
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 96
    new-instance v8, Lcom/biznessapps/android/Base64OutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/biznessapps/android/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .local v8, "output":Lcom/biznessapps/android/Base64OutputStream;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biznessapps/android/Base64OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    invoke-static {v8}, Lcom/biznessapps/utils/MemoryUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 84
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :cond_4
    sget-object v9, Lcom/biznessapps/utils/MemoryUtils;->appContext:Landroid/content/Context;

    const-string v10, "cached_images_"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_1

    .line 98
    .restart local v5    # "filePath":Ljava/lang/String;
    .restart local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v7}, Lcom/biznessapps/utils/MemoryUtils;->close(Ljava/io/Closeable;)V

    throw v9

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    goto :goto_3

    .line 100
    .end local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :catch_2
    move-exception v0

    move-object v7, v8

    .end local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    goto :goto_4

    .line 98
    .end local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :catch_3
    move-exception v0

    move-object v7, v8

    .end local v8    # "output":Lcom/biznessapps/android/Base64OutputStream;
    .restart local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    goto :goto_2

    .line 80
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v7    # "output":Lcom/biznessapps/android/Base64OutputStream;
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v2    # "fileDir":Ljava/io/File;
    .restart local v3    # "fileDir":Ljava/io/File;
    :catch_5
    move-exception v9

    move-object v2, v3

    .end local v3    # "fileDir":Ljava/io/File;
    .restart local v2    # "fileDir":Ljava/io/File;
    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sput-object p0, Lcom/biznessapps/utils/MemoryUtils;->appContext:Landroid/content/Context;

    .line 64
    return-void
.end method
