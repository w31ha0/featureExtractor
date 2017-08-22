.class public Lc/Capture;
.super Lvpadn/r;
.source "Capture.java"


# instance fields
.field private a:Lvpadn/p;

.field private b:J

.field private c:D

.field private d:Lorg/json/JSONArray;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 383
    :try_start_0
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-object v0

    .line 385
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-static {p1, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 355
    :try_start_0
    const-string v2, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "fullPath"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".3gpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/audio/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    const-string v2, "type"

    const-string v3, "audio/3gpp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    :goto_0
    const-string v2, "lastModifiedDate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 371
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 377
    :goto_1
    return-object v1

    .line 364
    :cond_1
    const-string v2, "type"

    const-string v3, "video/3gpp"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 367
    :cond_2
    :try_start_1
    const-string v2, "type"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v1, "height"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v1, "duration"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "codecs"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    invoke-static {p1}, Lc/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_1
    const-string v1, "Capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mime type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "image/jpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    :cond_2
    invoke-direct {p0, p1, v0}, Lc/Capture;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    :cond_3
    :goto_0
    return-object v0

    .line 139
    :cond_4
    const-string v1, "audio/3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    invoke-direct {p0, p1, v0, v4}, Lc/Capture;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_5
    const-string v1, "video/3gpp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video/mp4"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    :cond_6
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lc/Capture;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    invoke-static {p1}, Lc/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 160
    const-string v1, "height"

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v1, "width"

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    return-object p2
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 177
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 179
    const-string v1, "duration"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    if-eqz p3, :cond_0

    .line 181
    const-string v1, "height"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v1, "width"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-object p2

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v0, "Capture"

    const-string v1, "Error: loading video file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 197
    return-void
.end method

.method private a(D)V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v0, v2}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 224
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v0, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 204
    invoke-direct {p0}, Lc/Capture;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/Capture;->b(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lc/Capture;->e:I

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Capture.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 420
    invoke-direct {p0}, Lc/Capture;->d()Landroid/net/Uri;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lc/Capture;->b(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 422
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 425
    iget v3, p0, Lc/Capture;->e:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 426
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 427
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 431
    :cond_0
    return-void
.end method

.method private d()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 441
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    iput-object p3, p0, Lc/Capture;->a:Lvpadn/p;

    .line 82
    iput-wide v4, p0, Lc/Capture;->b:J

    .line 83
    iput-wide v6, p0, Lc/Capture;->c:D

    .line 84
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    .line 86
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    const-string v3, "limit"

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lc/Capture;->b:J

    .line 89
    const-string v3, "duration"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lc/Capture;->c:D

    .line 92
    :cond_0
    const-string v2, "getFormatData"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lc/Capture;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    .line 110
    :goto_0
    return v0

    .line 97
    :cond_1
    const-string v2, "captureAudio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    invoke-direct {p0}, Lc/Capture;->a()V

    goto :goto_0

    .line 100
    :cond_2
    const-string v2, "captureImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-direct {p0}, Lc/Capture;->b()V

    goto :goto_0

    .line 103
    :cond_3
    const-string v2, "captureVideo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    iget-wide v2, p0, Lc/Capture;->c:D

    invoke-direct {p0, v2, v3}, Lc/Capture;->a(D)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public fail(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    invoke-virtual {v0, p1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V

    .line 398
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 238
    if-ne p2, v7, :cond_7

    .line 240
    if-nez p1, :cond_2

    .line 242
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lc/Capture;->a(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    iget-object v0, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lc/Capture;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 248
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v3, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-direct {p0}, Lc/Capture;->a()V

    goto :goto_0

    .line 253
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 261
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 276
    :goto_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Capture.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 278
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 280
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 281
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    const-string v0, "Error capturing image."

    invoke-direct {p0, v6, v0}, Lc/Capture;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/Capture;->fail(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 266
    :catch_1
    move-exception v1

    .line 267
    :try_start_3
    const-string v1, "Capture"

    const-string v2, "Can\'t write to external media storage."

    invoke-static {v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 269
    :try_start_4
    iget-object v1, p0, Lc/Capture;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_1

    .line 270
    :catch_2
    move-exception v0

    .line 271
    :try_start_5
    const-string v0, "Capture"

    const-string v1, "Can\'t write to internal media storage."

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    const-string v1, "Error capturing image - no media storage found."

    invoke-direct {p0, v0, v1}, Lc/Capture;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 283
    :cond_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 284
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 285
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 288
    iget-object v1, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lc/Capture;->a(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 290
    invoke-direct {p0}, Lc/Capture;->c()V

    .line 292
    iget-object v0, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lc/Capture;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 294
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v3, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 297
    :cond_4
    invoke-direct {p0}, Lc/Capture;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 303
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 305
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lc/Capture;->a(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    iget-object v0, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lc/Capture;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 311
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v3, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 314
    :cond_6
    iget-wide v0, p0, Lc/Capture;->c:D

    invoke-direct {p0, v0, v1}, Lc/Capture;->a(D)V

    goto/16 :goto_0

    .line 319
    :cond_7
    if-nez p2, :cond_9

    .line 321
    iget-object v0, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 322
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v3, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 326
    :cond_8
    const-string v0, "Canceled."

    invoke-direct {p0, v1, v0}, Lc/Capture;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 332
    :cond_9
    iget-object v0, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 333
    iget-object v0, p0, Lc/Capture;->a:Lvpadn/p;

    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    iget-object v3, p0, Lc/Capture;->d:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 337
    :cond_a
    const-string v0, "Did not complete!"

    invoke-direct {p0, v1, v0}, Lc/Capture;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/Capture;->fail(Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method
