.class public Lc/CameraLauncher;
.super Lvpadn/r;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field public callbackContext:Lvpadn/p;

.field private d:Landroid/net/Uri;

.field private e:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/media/MediaScannerConnection;

.field private l:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 104
    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;Lvpadn/i;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 505
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 506
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    .line 507
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 511
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    invoke-virtual {p3}, Lvpadn/i;->d()V

    .line 513
    return-object v0

    .line 509
    :cond_0
    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 569
    iget v1, p0, Lc/CameraLauncher;->b:I

    if-gtz v1, :cond_1

    iget v1, p0, Lc/CameraLauncher;->c:I

    if-gtz v1, :cond_1

    .line 570
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    :cond_0
    :goto_0
    return-object v0

    .line 574
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 575
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 576
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 579
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_0

    .line 585
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v2, v3}, Lc/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v2

    .line 588
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 589
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p0, Lc/CameraLauncher;->b:I

    iget v6, p0, Lc/CameraLauncher;->c:I

    invoke-static {v3, v4, v5, v6}, Lc/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 590
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_0

    .line 595
    aget v0, v2, v8

    aget v2, v2, v7

    invoke-static {v1, v0, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 545
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :try_start_0
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    const-string v1, "CameraLauncher"

    const-string v2, "Can\'t write to external media storage."

    invoke-static {v1, v2}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :try_start_1
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    const-string v0, "CameraLauncher"

    const-string v1, "Can\'t write to internal media storage."

    invoke-static {v0, v1}, Lvpadn/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Ljava/io/File;
    .locals 3

    .prologue
    .line 213
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-object v0

    .line 216
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Pic.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Encoding Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 685
    if-eqz p4, :cond_0

    .line 686
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 690
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 692
    invoke-direct {p0, p1}, Lc/CameraLauncher;->b(I)V

    .line 694
    iget-boolean v0, p0, Lc/CameraLauncher;->h:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 695
    invoke-direct {p0, p3}, Lc/CameraLauncher;->c(Landroid/net/Uri;)V

    .line 698
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 699
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lc/CameraLauncher;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 528
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 530
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 531
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 534
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 535
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 536
    return-void
.end method

.method private b(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

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

.method private b()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 738
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 709
    .line 710
    invoke-direct {p0}, Lc/CameraLauncher;->b()Landroid/net/Uri;

    move-result-object v3

    .line 711
    invoke-direct {p0, v3}, Lc/CameraLauncher;->b(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 712
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 714
    if-ne p1, v0, :cond_0

    iget-boolean v5, p0, Lc/CameraLauncher;->h:Z

    if-eqz v5, :cond_0

    move v0, v1

    .line 719
    :cond_0
    iget v5, p0, Lc/CameraLauncher;->j:I

    sub-int/2addr v4, v5

    if-ne v4, v0, :cond_1

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 721
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 722
    if-ne v0, v1, :cond_2

    .line 723
    add-int/lit8 v0, v2, -0x1

    .line 725
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 728
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private c(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 775
    iput-object p1, p0, Lc/CameraLauncher;->l:Landroid/net/Uri;

    .line 776
    iget-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 779
    :cond_0
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    .line 780
    iget-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 781
    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 3

    .prologue
    .line 656
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 657
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 659
    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 660
    div-int v0, p0, p2

    .line 662
    :goto_0
    return v0

    :cond_0
    div-int v0, p1, p3

    goto :goto_0
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .locals 8

    .prologue
    .line 606
    iget v1, p0, Lc/CameraLauncher;->b:I

    .line 607
    iget v0, p0, Lc/CameraLauncher;->c:I

    .line 610
    if-gtz v1, :cond_0

    if-gtz v0, :cond_0

    .line 639
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 640
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 641
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 642
    return-object v0

    .line 615
    :cond_0
    if-lez v1, :cond_1

    if-gtz v0, :cond_1

    .line 616
    mul-int v0, v1, p2

    div-int p2, v0, p1

    move p1, v1

    goto :goto_0

    .line 619
    :cond_1
    if-gtz v1, :cond_2

    if-lez v0, :cond_2

    .line 620
    mul-int v1, v0, p1

    div-int p1, v1, p2

    move p2, v0

    goto :goto_0

    .line 629
    :cond_2
    int-to-double v2, v1

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 630
    int-to-double v4, p1

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 632
    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    .line 633
    mul-int v0, v1, p2

    div-int p2, v0, p1

    move p1, v1

    goto :goto_0

    .line 634
    :cond_3
    cmpg-double v2, v4, v2

    if-gez v2, :cond_4

    .line 635
    mul-int v1, v0, p1

    div-int p1, v1, p2

    move p2, v0

    goto :goto_0

    :cond_4
    move p2, v0

    move p1, v1

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    iput-object p3, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    .line 125
    const-string v2, "takePicture"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    iput-boolean v1, p0, Lc/CameraLauncher;->h:Z

    .line 129
    iput v1, p0, Lc/CameraLauncher;->c:I

    .line 130
    iput v1, p0, Lc/CameraLauncher;->b:I

    .line 131
    iput v1, p0, Lc/CameraLauncher;->e:I

    .line 132
    iput v1, p0, Lc/CameraLauncher;->g:I

    .line 133
    const/16 v2, 0x50

    iput v2, p0, Lc/CameraLauncher;->a:I

    .line 135
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iput v1, p0, Lc/CameraLauncher;->a:I

    .line 136
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 137
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 138
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lc/CameraLauncher;->b:I

    .line 139
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lc/CameraLauncher;->c:I

    .line 140
    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lc/CameraLauncher;->e:I

    .line 141
    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lc/CameraLauncher;->g:I

    .line 143
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lc/CameraLauncher;->i:Z

    .line 144
    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lc/CameraLauncher;->h:Z

    .line 148
    iget v3, p0, Lc/CameraLauncher;->b:I

    if-ge v3, v0, :cond_0

    .line 149
    iput v4, p0, Lc/CameraLauncher;->b:I

    .line 151
    :cond_0
    iget v3, p0, Lc/CameraLauncher;->c:I

    if-ge v3, v0, :cond_1

    .line 152
    iput v4, p0, Lc/CameraLauncher;->c:I

    .line 155
    :cond_1
    if-ne v2, v0, :cond_3

    .line 156
    iget v2, p0, Lc/CameraLauncher;->e:I

    invoke-virtual {p0, v1, v2}, Lc/CameraLauncher;->takePicture(II)V

    .line 161
    :cond_2
    :goto_0
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-direct {v1, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;)V

    .line 162
    invoke-virtual {v1, v0}, Lvpadn/w;->a(Z)V

    .line 163
    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 166
    :goto_1
    return v0

    .line 158
    :cond_3
    if-eqz v2, :cond_4

    if-ne v2, v5, :cond_2

    .line 159
    :cond_4
    invoke-virtual {p0, v2, v1}, Lc/CameraLauncher;->getImage(II)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 166
    goto :goto_1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v0, p1}, Lvpadn/p;->b(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public getImage(II)V
    .locals 4

    .prologue
    .line 233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 234
    const-string v0, "Get Picture"

    .line 235
    iget v2, p0, Lc/CameraLauncher;->g:I

    if-nez v2, :cond_2

    .line 236
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_0
    :goto_0
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, p0, v0, v1}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 255
    :cond_1
    return-void

    .line 238
    :cond_2
    iget v2, p0, Lc/CameraLauncher;->g:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 239
    const-string v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v0, "Get Video"

    goto :goto_0

    .line 242
    :cond_3
    iget v2, p0, Lc/CameraLauncher;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 245
    const-string v0, "*/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v0, "Get All"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .prologue
    .line 268
    div-int/lit8 v0, p1, 0x10

    add-int/lit8 v0, v0, -0x1

    .line 269
    rem-int/lit8 v1, p1, 0x10

    add-int/lit8 v8, v1, -0x1

    .line 270
    const/4 v6, 0x0

    .line 273
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 275
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 278
    :try_start_0
    new-instance v3, Lvpadn/i;

    invoke-direct {v3}, Lvpadn/i;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    :try_start_1
    iget v0, p0, Lc/CameraLauncher;->e:I

    if-nez v0, :cond_22

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Pic.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lvpadn/i;->a(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3}, Lvpadn/i;->a()V

    .line 283
    invoke-virtual {v3}, Lvpadn/i;->c()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_0
    move v6, v0

    .line 289
    :goto_1
    const/4 v2, 0x0

    .line 290
    const/4 v1, 0x0

    .line 293
    if-nez v8, :cond_4

    .line 294
    :try_start_2
    iget-object v0, p0, Lc/CameraLauncher;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/CameraLauncher;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 301
    :cond_0
    if-nez v0, :cond_2

    .line 302
    const-string v0, "CameraLauncher"

    const-string v1, "I either have a null image path or bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "Unable to create bitmap!"

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 494
    :cond_1
    :goto_2
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 365
    :catch_1
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 367
    const-string v0, "Error capturing image."

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_2

    .line 307
    :cond_2
    if-eqz v6, :cond_3

    :try_start_3
    iget-boolean v2, p0, Lc/CameraLauncher;->i:Z

    if-eqz v2, :cond_3

    .line 308
    invoke-direct {p0, v6, v0, v3}, Lc/CameraLauncher;->a(ILandroid/graphics/Bitmap;Lvpadn/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :cond_3
    invoke-virtual {p0, v0}, Lc/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 312
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lc/CameraLauncher;->b(I)V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 362
    :goto_3
    const/4 v2, 0x1

    iget-object v3, p0, Lc/CameraLauncher;->d:Landroid/net/Uri;

    invoke-direct {p0, v2, v3, v0, v1}, Lc/CameraLauncher;->a(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 316
    :cond_4
    const/4 v0, 0x1

    if-eq v8, v0, :cond_5

    const/4 v0, 0x2

    if-ne v8, v0, :cond_21

    .line 317
    :cond_5
    iget-boolean v0, p0, Lc/CameraLauncher;->h:Z

    if-nez v0, :cond_8

    .line 318
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 323
    :goto_4
    if-nez v0, :cond_6

    .line 324
    const-string v1, "Error capturing image - no media storage found."

    invoke-virtual {p0, v1}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    .line 328
    :cond_6
    iget v1, p0, Lc/CameraLauncher;->c:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    iget v1, p0, Lc/CameraLauncher;->b:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    iget v1, p0, Lc/CameraLauncher;->a:I

    const/16 v4, 0x64

    if-ne v1, v4, :cond_9

    iget-boolean v1, p0, Lc/CameraLauncher;->i:Z

    if-nez v1, :cond_9

    .line 330
    invoke-direct {p0, v0}, Lc/CameraLauncher;->a(Landroid/net/Uri;)V

    .line 332
    iget-object v1, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lvpadn/p;->a(Ljava/lang/String;)V

    move-object v1, v2

    .line 359
    :cond_7
    :goto_5
    iget-object v2, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lvpadn/p;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 320
    :cond_8
    invoke-direct {p0}, Lc/CameraLauncher;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 334
    :cond_9
    iget-object v1, p0, Lc/CameraLauncher;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/FileUtils;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc/CameraLauncher;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 336
    if-eqz v6, :cond_a

    iget-boolean v2, p0, Lc/CameraLauncher;->i:Z

    if-eqz v2, :cond_a

    .line 337
    invoke-direct {p0, v6, v1, v3}, Lc/CameraLauncher;->a(ILandroid/graphics/Bitmap;Lvpadn/i;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 341
    :cond_a
    iget-object v2, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 342
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lc/CameraLauncher;->a:I

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 343
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 346
    iget v2, p0, Lc/CameraLauncher;->e:I

    if-nez v2, :cond_7

    .line 348
    iget-boolean v2, p0, Lc/CameraLauncher;->h:Z

    if-eqz v2, :cond_b

    .line 349
    iget-object v2, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-static {v0, v2}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v2

    .line 353
    :goto_6
    invoke-virtual {v3, v2}, Lvpadn/i;->b(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3}, Lvpadn/i;->b()V

    goto :goto_5

    .line 351
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_6

    .line 372
    :cond_c
    if-nez p2, :cond_d

    .line 373
    const-string v0, "Camera cancelled."

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 378
    :cond_d
    const-string v0, "Did not complete!"

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 383
    :cond_e
    if-eqz v0, :cond_f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 384
    :cond_f
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1e

    .line 385
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 389
    iget v0, p0, Lc/CameraLauncher;->g:I

    if-eqz v0, :cond_10

    .line 390
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 395
    :cond_10
    iget v0, p0, Lc/CameraLauncher;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    iget v0, p0, Lc/CameraLauncher;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    if-eq v8, v0, :cond_11

    const/4 v0, 0x2

    if-ne v8, v0, :cond_12

    :cond_11
    iget-boolean v0, p0, Lc/CameraLauncher;->i:Z

    if-nez v0, :cond_12

    .line 397
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 400
    :cond_12
    iget-object v0, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-static {v9, v0}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v0}, Lc/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    const-string v2, "image/jpeg"

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 407
    :cond_13
    const-string v0, "CameraLauncher"

    const-string v1, "I either have a null image path or bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, "Unable to retrieve path to picture!"

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 411
    :cond_14
    invoke-direct {p0, v0}, Lc/CameraLauncher;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 412
    if-nez v7, :cond_15

    .line 413
    const-string v0, "CameraLauncher"

    const-string v1, "I either have a null image path or bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v0, "Unable to create bitmap!"

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 418
    :cond_15
    iget-boolean v0, p0, Lc/CameraLauncher;->i:Z

    if-eqz v0, :cond_20

    .line 419
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "orientation"

    aput-object v1, v2, v0

    .line 420
    iget-object v0, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_16

    .line 423
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 424
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 425
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_16
    if-eqz v6, :cond_20

    .line 428
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 429
    int-to-float v0, v6

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 430
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 435
    :goto_7
    if-nez v8, :cond_19

    .line 436
    invoke-virtual {p0, v1}, Lc/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;)V

    .line 479
    :cond_17
    :goto_8
    if-eqz v1, :cond_18

    .line 480
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 483
    :cond_18
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_2

    .line 440
    :cond_19
    const/4 v0, 0x1

    if-eq v8, v0, :cond_1a

    const/4 v0, 0x2

    if-ne v8, v0, :cond_17

    .line 442
    :cond_1a
    iget v0, p0, Lc/CameraLauncher;->c:I

    if-lez v0, :cond_1d

    iget v0, p0, Lc/CameraLauncher;->b:I

    if-lez v0, :cond_1d

    .line 445
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lvpadn/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/resize.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    new-instance v3, Lvpadn/i;

    invoke-direct {v3}, Lvpadn/i;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 448
    :try_start_5
    iget v0, p0, Lc/CameraLauncher;->e:I

    if-nez v0, :cond_1b

    .line 449
    invoke-virtual {v3, v2}, Lvpadn/i;->a(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3}, Lvpadn/i;->a()V

    .line 451
    invoke-virtual {v3}, Lvpadn/i;->c()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 457
    :cond_1b
    :goto_9
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 458
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lc/CameraLauncher;->a:I

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 459
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 462
    iget v0, p0, Lc/CameraLauncher;->e:I

    if-nez v0, :cond_1c

    .line 463
    iget-object v0, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    invoke-static {v9, v0}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lvpadn/i;->b(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3}, Lvpadn/i;->b()V

    .line 469
    :cond_1c
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvpadn/p;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 470
    :catch_2
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    const-string v0, "Error retrieving image."

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 453
    :catch_3
    move-exception v0

    .line 454
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    .line 476
    :cond_1d
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lvpadn/p;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 487
    :cond_1e
    if-nez p2, :cond_1f

    .line 488
    const-string v0, "Selection cancelled."

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 491
    :cond_1f
    const-string v0, "Selection did not complete!"

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_20
    move-object v1, v7

    goto/16 :goto_7

    :cond_21
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_22
    move v0, v6

    goto/16 :goto_0
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 785
    :try_start_0
    iget-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lc/CameraLauncher;->l:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    const-string v0, "CameraLauncher"

    const-string v1, "Can\'t scan file in MediaScanner after taking picture"

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lc/CameraLauncher;->k:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 794
    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 748
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 750
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lc/CameraLauncher;->a:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 752
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/bc;->a([BZ)[B

    move-result-object v0

    .line 753
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 754
    iget-object v0, p0, Lc/CameraLauncher;->callbackContext:Lvpadn/p;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    const-string v0, "Error compressing image."

    invoke-virtual {p0, v0}, Lc/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public takePicture(II)V
    .locals 4

    .prologue
    .line 189
    invoke-direct {p0}, Lc/CameraLauncher;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/CameraLauncher;->b(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lc/CameraLauncher;->j:I

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p2}, Lc/CameraLauncher;->a(I)Ljava/io/File;

    move-result-object v1

    .line 196
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lc/CameraLauncher;->d:Landroid/net/Uri;

    .line 199
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lc/CameraLauncher;->cordova:Lvpadn/q;

    add-int/lit8 v2, p1, 0x20

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lvpadn/q;->startActivityForResult(Lvpadn/r;Landroid/content/Intent;I)V

    .line 204
    :cond_0
    return-void
.end method
