.class public final Lcom/wooboo/adlib_android/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static volatile e:I

.field private static f:Landroid/telephony/TelephonyManager;

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Landroid/content/Context;

.field private static volatile n:Z

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Landroid/location/Location;

.field private static r:J

.field private static s:I

.field private static t:I

.field private static u:Ljava/lang/String;

.field private static v:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    sput v3, Lcom/wooboo/adlib_android/d;->a:I

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/wooboo/adlib_android/d;->b:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/wooboo/adlib_android/d;->c:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/wooboo/adlib_android/d;->d:I

    .line 40
    sput v3, Lcom/wooboo/adlib_android/d;->e:I

    .line 41
    sput-object v1, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/wooboo/adlib_android/d;->m:Landroid/content/Context;

    .line 43
    sput-boolean v2, Lcom/wooboo/adlib_android/d;->n:Z

    .line 44
    sput-object v1, Lcom/wooboo/adlib_android/d;->o:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/wooboo/adlib_android/d;->p:Ljava/lang/String;

    .line 443
    const/16 v0, 0xbb8

    sput v0, Lcom/wooboo/adlib_android/d;->s:I

    .line 559
    const/4 v0, -0x2

    sput v0, Lcom/wooboo/adlib_android/d;->t:I

    .line 569
    sput-object v1, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    .line 636
    sput v2, Lcom/wooboo/adlib_android/d;->v:I

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "Wooboo SDK"

    .line 67
    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "Market_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :try_start_1
    const-string v1, "Wooboo SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Market_ID is set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    move v0, v3

    :goto_1
    const-string v1, "Wooboo SDK"

    .line 79
    const-string v1, "Could not read Market_ID meta-data from AndroidManifest.xml."

    .line 78
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 280
    :try_start_0
    new-instance v0, Lcom/wooboo/adlib_android/d$2;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/d$2;-><init>()V

    .line 285
    sget-boolean v1, Lcom/wooboo/adlib_android/d;->n:Z

    if-nez v1, :cond_0

    .line 286
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wooboo/adlib_android/d;->n:Z

    .line 287
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(I)V
    .locals 0

    .prologue
    .line 264
    sput p0, Lcom/wooboo/adlib_android/d;->j:I

    .line 265
    return-void
.end method

.method static synthetic a(J)V
    .locals 0

    .prologue
    .line 64
    sput-wide p0, Lcom/wooboo/adlib_android/d;->r:J

    return-void
.end method

.method static synthetic a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/wooboo/adlib_android/d;->q:Landroid/location/Location;

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    sput-object p0, Lcom/wooboo/adlib_android/d;->p:Ljava/lang/String;

    .line 249
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v0, "UTF-8"

    .line 622
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 624
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 629
    const-string v1, "Wooboo SDK"

    .line 630
    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    .line 628
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static a(Z)V
    .locals 0

    .prologue
    .line 412
    sput-boolean p0, Lcom/wooboo/adlib_android/d;->g:Z

    .line 413
    return-void
.end method

.method protected static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 230
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    .line 233
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Wooboo_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 240
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v1

    const-string v1, "Wooboo SDK"

    .line 238
    const-string v2, "Could not read Wooboo_PID meta-data from AndroidManifest.xml."

    .line 237
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "http://www.baidu.com/"

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://162.105.131.113/"

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http://www.wooboo.com.cn"

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/wooboo/adlib_android/d;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/wooboo/adlib_android/d;->b:I

    sput v0, Lcom/wooboo/adlib_android/d;->e:I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/wooboo/adlib_android/d;->v:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    sget v0, Lcom/wooboo/adlib_android/d;->c:I

    sput v0, Lcom/wooboo/adlib_android/d;->e:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/wooboo/adlib_android/d;->v:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    sget v0, Lcom/wooboo/adlib_android/d;->d:I

    sput v0, Lcom/wooboo/adlib_android/d;->e:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/wooboo/adlib_android/d;->a:I

    sput v0, Lcom/wooboo/adlib_android/d;->e:I

    goto :goto_0
.end method

.method protected static b(I)V
    .locals 0

    .prologue
    .line 566
    sput p0, Lcom/wooboo/adlib_android/d;->t:I

    .line 567
    return-void
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    sput-object p0, Lcom/wooboo/adlib_android/d;->o:Ljava/lang/String;

    .line 257
    return-void
.end method

.method protected static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 268
    .line 269
    sput-object p0, Lcom/wooboo/adlib_android/d;->m:Landroid/content/Context;

    .line 270
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 269
    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    .line 271
    sget-object v0, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/d;->k:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    .line 273
    :cond_0
    sget-object v0, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 274
    sget-object v0, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    .line 276
    :cond_1
    return-void

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    const-string v0, "Wooboo SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "2"

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 371
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v0, "2"

    move-object v0, v2

    .line 391
    :goto_0
    return-object v0

    .line 374
    :cond_0
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    const-string v0, "0"

    goto :goto_0

    .line 376
    :cond_1
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    const-string v0, "5"

    goto :goto_0

    .line 378
    :cond_2
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    const-string v0, "3"

    goto :goto_0

    .line 380
    :cond_3
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    const-string v0, "8"

    goto :goto_0

    .line 382
    :cond_4
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    const-string v0, "6"

    goto :goto_0

    .line 384
    :cond_5
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 385
    const-string v0, "7"

    goto :goto_0

    .line 386
    :cond_6
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 387
    const-string v0, "4"

    goto :goto_0

    .line 388
    :cond_7
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 389
    const-string v0, "9"

    goto :goto_0

    .line 391
    :cond_8
    const-string v0, "2"

    move-object v0, v2

    goto :goto_0
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 395
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIGURATION ERROR:  Incorrect Wooboo publisher ID.  Should 32 [a-z,0-9] characters:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/wooboo/adlib_android/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    .line 399
    :cond_1
    const-string v0, "Wooboo SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your Wooboo_PID is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sput-object p0, Lcom/wooboo/adlib_android/d;->h:Ljava/lang/String;

    .line 401
    return-void
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 426
    const-string v1, "android_id"

    .line 424
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    if-nez v0, :cond_0

    sget-object v1, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 428
    sget-object v0, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_0
    if-nez v0, :cond_1

    .line 431
    const-string v0, "00000000"

    .line 433
    :cond_1
    return-object v0
.end method

.method protected static e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 420
    sput-object p0, Lcom/wooboo/adlib_android/d;->i:Ljava/lang/String;

    .line 421
    return-void
.end method

.method protected static f(Landroid/content/Context;)Lcom/wooboo/adlib_android/c;
    .locals 10

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    const-string v0, "http://ade.wooboo.com.cn/t/test"

    const-string v0, "http://ade.wooboo.com.cn/a/p1"

    const-string v0, "Content-Length"

    .line 446
    .line 447
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 446
    if-ne v0, v3, :cond_0

    .line 449
    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/wooboo/adlib_android/d;->c(Ljava/lang/String;)V

    .line 454
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4"

    const-string v2, "ifm"

    invoke-static {v0, v2, v1}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/d;->t:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_1
    const-string v1, "mt"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/d;->t:I

    if-eq v1, v3, :cond_2

    const-string v1, "mi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/wooboo/adlib_android/d;->t:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "bs"

    const-string v2, "7"

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pid"

    sget-object v2, Lcom/wooboo/adlib_android/d;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "csdk"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk"

    const-string v2, "v1.1"

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    sget-object v2, Lcom/wooboo/adlib_android/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    if-nez v1, :cond_3

    sget-object v1, Lcom/wooboo/adlib_android/d;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/wooboo/adlib_android/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/wooboo/adlib_android/d;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "ml"

    sget-object v2, Lcom/wooboo/adlib_android/d;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pn"

    sget-object v2, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/wooboo/adlib_android/d;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    sget-object v2, Lcom/wooboo/adlib_android/d;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sw"

    invoke-static {v0, v1, v8}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/wooboo/adlib_android/d;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid"

    invoke-static {v0, v2, v1}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/wooboo/adlib_android/d;->m:Landroid/content/Context;

    if-eqz v1, :cond_5

    const-string v1, "loc"

    sget-object v2, Lcom/wooboo/adlib_android/d;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/wooboo/adlib_android/d;->g(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1a

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#0.00000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    :try_start_0
    const-string v2, "pit=1&pf=android"

    .line 463
    sget v0, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->a:I

    if-ne v0, v3, :cond_a

    .line 464
    sget-boolean v0, Lcom/wooboo/adlib_android/d;->g:Z

    if-eqz v0, :cond_8

    .line 465
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://ade.wooboo.com.cn/t/test"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 470
    :goto_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :try_start_1
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 472
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    :goto_3
    if-nez v0, :cond_11

    .line 539
    if-eqz v0, :cond_6

    .line 548
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_6
    :goto_4
    move-object v0, v8

    .line 555
    :goto_5
    return-object v0

    :cond_7
    move-object v2, v8

    .line 454
    goto/16 :goto_0

    .line 467
    :cond_8
    :try_start_3
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://ade.wooboo.com.cn/a/p1"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 534
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 535
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    const-string v0, "Wooboo SDK"

    const-string v3, "Could not get ad from Wooboo servers."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 539
    if-eqz v2, :cond_9

    .line 544
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 545
    :cond_9
    if-eqz v1, :cond_17

    .line 548
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v8

    goto :goto_5

    .line 473
    :cond_a
    :try_start_6
    sget v0, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->b:I

    if-eq v0, v3, :cond_b

    .line 474
    sget v0, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->c:I

    if-ne v0, v3, :cond_f

    .line 475
    :cond_b
    sget-boolean v0, Lcom/wooboo/adlib_android/d;->g:Z

    if-eqz v0, :cond_c

    .line 476
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://10.0.0.172/t/test"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 481
    :goto_7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 482
    :try_start_7
    const-string v3, "X-Online-Host"

    const-string v4, "ade.wooboo.com.cn"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 484
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 534
    :catch_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_6

    .line 478
    :cond_c
    :try_start_8
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://10.0.0.172/a/p1"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    .line 537
    :catchall_0
    move-exception v0

    move-object v1, v8

    move-object v2, v8

    .line 539
    :goto_8
    if-eqz v2, :cond_d

    .line 544
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 545
    :cond_d
    if-eqz v1, :cond_e

    .line 548
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 554
    :cond_e
    :goto_9
    throw v0

    .line 485
    :cond_f
    :try_start_a
    sget v0, Lcom/wooboo/adlib_android/d;->e:I

    sget v3, Lcom/wooboo/adlib_android/d;->d:I

    if-ne v0, v3, :cond_19

    .line 486
    sget-boolean v0, Lcom/wooboo/adlib_android/d;->g:Z

    if-eqz v0, :cond_10

    .line 487
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://ade.wooboo.com.cn/t/test"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 492
    :goto_a
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 493
    new-instance v5, Ljava/net/InetSocketAddress;

    const-string v6, "10.0.0.200"

    const/16 v7, 0x50

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 492
    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 495
    invoke-virtual {v0, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 496
    :try_start_b
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 497
    sget v3, Lcom/wooboo/adlib_android/d;->s:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_3

    .line 537
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_8

    .line 489
    :cond_10
    :try_start_c
    new-instance v0, Ljava/net/URL;

    const-string v3, "http://ade.wooboo.com.cn/a/p1"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 503
    :cond_11
    :try_start_d
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 504
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 505
    const-string v3, "Content-Type"

    .line 506
    const-string v4, "application/x-www-form-urlencoded"

    .line 505
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-boolean v3, Lcom/wooboo/adlib_android/d;->g:Z

    if-eqz v3, :cond_13

    .line 508
    const-string v3, "Content-Length"

    .line 509
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 517
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 518
    sget-boolean v3, Lcom/wooboo/adlib_android/d;->g:Z

    if-eqz v3, :cond_14

    .line 519
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 524
    :goto_c
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 525
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v1

    .line 526
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 527
    new-array v3, v2, [B

    .line 528
    const/4 v4, 0x0

    :goto_d
    if-lt v4, v2, :cond_15

    .line 531
    array-length v2, v3

    if-lez v2, :cond_18

    .line 532
    invoke-static {p0, v3}, Lcom/wooboo/adlib_android/c;->a(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/c;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v2

    .line 539
    :goto_e
    if-eqz v1, :cond_12

    .line 544
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 545
    :cond_12
    if-eqz v0, :cond_16

    .line 548
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-object v0, v2

    goto/16 :goto_5

    .line 511
    :cond_13
    :try_start_10
    const-string v3, "Content-Length"

    .line 512
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 521
    :cond_14
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_c

    .line 529
    :cond_15
    :try_start_11
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 528
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 551
    :catch_2
    move-exception v0

    move-object v0, v8

    goto/16 :goto_5

    :catch_3
    move-exception v0

    :cond_16
    move-object v0, v2

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_9

    .line 537
    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_8

    .line 534
    :catch_6
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_6

    :cond_17
    move-object v0, v8

    goto/16 :goto_5

    :cond_18
    move-object v2, v8

    goto :goto_e

    :cond_19
    move-object v0, v8

    goto/16 :goto_3

    :cond_1a
    move-object v2, v8

    goto/16 :goto_1
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 295
    .line 297
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 300
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 301
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 302
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 303
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 309
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    .prologue
    const-wide/32 v7, 0xdbba0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "location"

    .line 98
    if-eqz p0, :cond_4

    .line 100
    sget-object v0, Lcom/wooboo/adlib_android/d;->q:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/wooboo/adlib_android/d;->r:J

    .line 102
    add-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 104
    :cond_0
    monitor-enter p0

    .line 108
    :try_start_0
    sget-object v0, Lcom/wooboo/adlib_android/d;->q:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/wooboo/adlib_android/d;->r:J

    .line 110
    add-long/2addr v2, v7

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 114
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    sput-wide v0, Lcom/wooboo/adlib_android/d;->r:J

    .line 123
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-nez v0, :cond_7

    .line 127
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/location/LocationManager;

    .line 129
    if-eqz v0, :cond_6

    .line 130
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 131
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 134
    const/4 v2, 0x1

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 140
    :goto_0
    if-nez v1, :cond_2

    .line 142
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 141
    if-nez v3, :cond_2

    .line 146
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    check-cast v0, Landroid/location/LocationManager;

    .line 148
    if-eqz v0, :cond_5

    .line 149
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 154
    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 160
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 167
    if-eqz v1, :cond_3

    .line 182
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 183
    new-instance v5, Lcom/wooboo/adlib_android/d$1;

    invoke-direct {v5, v0}, Lcom/wooboo/adlib_android/d$1;-><init>(Landroid/location/LocationManager;)V

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    .line 182
    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 104
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_4
    sget-object v0, Lcom/wooboo/adlib_android/d;->q:Landroid/location/Location;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move-object v1, v6

    move v2, v4

    goto :goto_0

    :cond_7
    move-object v1, v6

    move-object v0, v6

    move v2, v5

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "11"

    const-string v7, "10"

    const-string v6, "31"

    const-string v5, "so"

    const-string v4, "ac"

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    const/4 v2, 0x6

    if-lt v0, v2, :cond_2

    .line 642
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 644
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 645
    :cond_0
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    const/4 v2, 0x5

    sput v2, Lcom/wooboo/adlib_android/d;->v:I

    .line 647
    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    .line 648
    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 649
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    const-string v2, "so"

    const-string v2, "0"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_1
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 681
    const/16 v0, 0x8

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 682
    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 683
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 651
    :cond_3
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 652
    const-string v2, "so"

    const-string v2, "1"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_4
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 654
    const-string v2, "so"

    const-string v2, "2"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_5
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 656
    const-string v2, "so"

    const-string v2, "3"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_6
    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 658
    const-string v2, "so"

    const-string v2, "4"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_7
    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 660
    const-string v2, "so"

    const-string v2, "5"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_8
    const-string v3, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 662
    const-string v2, "so"

    const-string v2, "6"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_9
    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 664
    const-string v2, "so"

    const-string v2, "7"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 665
    :cond_a
    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 666
    const-string v2, "so"

    const-string v2, "8"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_b
    const-string v3, "9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 668
    const-string v2, "so"

    const-string v2, "9"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :cond_c
    const-string v3, "A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 670
    const-string v2, "so"

    const-string v2, "10"

    invoke-static {v1, v5, v7}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 671
    :cond_d
    const-string v3, "B"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 672
    const-string v2, "so"

    const-string v2, "11"

    invoke-static {v1, v5, v8}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    :cond_e
    const-string v3, "C"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 674
    const-string v2, "so"

    const-string v2, "12"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :cond_f
    const-string v3, "D"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 676
    const-string v2, "so"

    const-string v2, "13"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    :cond_10
    const-string v3, "E"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 678
    const-string v2, "so"

    const-string v2, "14"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :cond_11
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 685
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 686
    :cond_12
    const-string v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 687
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 688
    :cond_13
    const-string v2, "04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 689
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 690
    :cond_14
    const-string v2, "05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 691
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    :cond_15
    const-string v2, "06"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 693
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 694
    :cond_16
    const-string v2, "07"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 695
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 696
    :cond_17
    const-string v2, "08"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 697
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    :cond_18
    const-string v2, "09"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 699
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 700
    :cond_19
    const-string v2, "10"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 701
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 702
    :cond_1a
    const-string v2, "11"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 703
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 704
    :cond_1b
    const-string v2, "12"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 705
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    :cond_1c
    const-string v2, "13"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 707
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 708
    :cond_1d
    const-string v2, "14"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 709
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    :cond_1e
    const-string v2, "15"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 711
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    :cond_1f
    const-string v2, "16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 713
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 714
    :cond_20
    const-string v2, "17"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 715
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 716
    :cond_21
    const-string v2, "18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 717
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 718
    :cond_22
    const-string v2, "19"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 719
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 720
    :cond_23
    const-string v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 721
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 722
    :cond_24
    const-string v2, "21"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 723
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 724
    :cond_25
    const-string v2, "22"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 725
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :cond_26
    const-string v2, "23"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 727
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 728
    :cond_27
    const-string v2, "24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 729
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 730
    :cond_28
    const-string v2, "25"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 731
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 732
    :cond_29
    const-string v2, "26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 733
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 734
    :cond_2a
    const-string v2, "27"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 735
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 736
    :cond_2b
    const-string v2, "28"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 737
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 738
    :cond_2c
    const-string v2, "29"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 739
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 740
    :cond_2d
    const-string v2, "30"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 741
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 742
    :cond_2e
    const-string v2, "31"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 747
    :cond_2f
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 748
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    const/16 v2, 0xb

    sput v2, Lcom/wooboo/adlib_android/d;->v:I

    .line 750
    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 751
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 752
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 753
    const-string v2, "so"

    const-string v2, "24"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :cond_30
    :goto_2
    const/16 v2, 0xd

    if-lt v0, v2, :cond_2

    .line 764
    const/16 v0, 0xa

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 765
    const-string v2, "010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 766
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 754
    :cond_31
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 755
    const-string v2, "so"

    const-string v2, "15"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 756
    :cond_32
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 757
    const-string v2, "so"

    const-string v2, "16"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 758
    :cond_33
    const-string v3, "5"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 759
    const-string v2, "so"

    const-string v2, "19"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 760
    :cond_34
    const-string v3, "6"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 761
    const-string v2, "so"

    const-string v2, "20"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 767
    :cond_35
    const-string v2, "022"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 768
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    :cond_36
    const-string v2, "31"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 770
    :cond_37
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :cond_38
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 772
    :cond_39
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    :cond_3a
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 774
    :cond_3b
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 775
    :cond_3c
    const-string v2, "024"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 776
    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 777
    :cond_3d
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    :cond_3e
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 779
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 780
    :cond_3f
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 781
    :cond_40
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 782
    :cond_41
    const-string v2, "021"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 783
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 784
    :cond_42
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 785
    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 786
    :cond_43
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 787
    :cond_44
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 788
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 789
    :cond_45
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 790
    :cond_46
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 791
    :cond_47
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 792
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 793
    :cond_48
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 794
    :cond_49
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 795
    :cond_4a
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 796
    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 797
    :cond_4b
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 798
    :cond_4c
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 799
    :cond_4d
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 800
    :cond_4e
    const-string v2, "027"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 801
    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 802
    :cond_4f
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 803
    :cond_50
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 804
    :cond_51
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    :cond_52
    const-string v2, "020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 806
    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 807
    :cond_53
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 808
    :cond_54
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 809
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 810
    :cond_55
    const-string v2, "898"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 811
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 812
    :cond_56
    const-string v2, "028"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 813
    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 814
    :cond_57
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 815
    :cond_58
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 816
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 817
    :cond_59
    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 818
    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 819
    :cond_5a
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 820
    :cond_5b
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 821
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    :cond_5c
    const-string v2, "029"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 823
    :cond_5d
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 824
    :cond_5e
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 825
    :cond_5f
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 826
    :cond_60
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 827
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 828
    :cond_61
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 829
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 830
    :cond_62
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 831
    :cond_63
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 832
    :cond_64
    const-string v2, "023"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 837
    :cond_65
    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 838
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    const/16 v2, 0xc

    sput v2, Lcom/wooboo/adlib_android/d;->v:I

    .line 840
    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 841
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 842
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 843
    const-string v2, "so"

    const-string v2, "17"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_66
    :goto_3
    const/16 v2, 0xd

    if-lt v0, v2, :cond_2

    .line 854
    const/16 v0, 0xa

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string v2, "010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 856
    const-string v0, "ac"

    const-string v0, "01"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 844
    :cond_67
    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 845
    const-string v2, "so"

    const-string v2, "18"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 846
    :cond_68
    const-string v3, "7"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 847
    const-string v2, "so"

    const-string v2, "21"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 848
    :cond_69
    const-string v3, "8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 849
    const-string v2, "so"

    const-string v2, "22"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 850
    :cond_6a
    const-string v3, "9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 851
    const-string v2, "so"

    const-string v2, "23"

    invoke-static {v1, v5, v2}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 857
    :cond_6b
    const-string v2, "022"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 858
    const-string v0, "ac"

    const-string v0, "03"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 859
    :cond_6c
    const-string v2, "31"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 860
    :cond_6d
    const-string v0, "ac"

    const-string v0, "09"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 861
    :cond_6e
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 862
    :cond_6f
    const-string v0, "ac"

    const-string v0, "12"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 863
    :cond_70
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 864
    :cond_71
    const-string v0, "ac"

    const-string v0, "08"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 865
    :cond_72
    const-string v2, "024"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 866
    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 867
    :cond_73
    const-string v0, "ac"

    const-string v0, "07"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 868
    :cond_74
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 869
    const-string v0, "ac"

    const-string v0, "06"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 870
    :cond_75
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 871
    :cond_76
    const-string v0, "ac"

    const-string v0, "05"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 872
    :cond_77
    const-string v2, "021"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 873
    const-string v0, "ac"

    const-string v0, "02"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 874
    :cond_78
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_79

    .line 875
    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 876
    :cond_79
    const-string v0, "ac"

    const-string v0, "14"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 877
    :cond_7a
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "58"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 878
    :cond_7b
    const-string v0, "ac"

    const-string v0, "18"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 879
    :cond_7c
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 880
    :cond_7d
    const-string v0, "ac"

    const-string v0, "13"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 881
    :cond_7e
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 882
    const-string v0, "ac"

    const-string v0, "19"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
    :cond_7f
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 884
    :cond_80
    const-string v0, "ac"

    const-string v0, "15"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 885
    :cond_81
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 886
    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 887
    :cond_82
    const-string v0, "ac"

    const-string v0, "11"

    invoke-static {v1, v4, v8}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 888
    :cond_83
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_84

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 889
    :cond_84
    const-string v0, "ac"

    const-string v0, "10"

    invoke-static {v1, v4, v7}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 890
    :cond_85
    const-string v2, "027"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 891
    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 892
    :cond_86
    const-string v0, "ac"

    const-string v0, "17"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 893
    :cond_87
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_88

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 894
    :cond_88
    const-string v0, "ac"

    const-string v0, "16"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 895
    :cond_89
    const-string v2, "020"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 896
    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 897
    :cond_8a
    const-string v0, "ac"

    const-string v0, "20"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 898
    :cond_8b
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 899
    const-string v0, "ac"

    const-string v0, "29"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 900
    :cond_8c
    const-string v2, "898"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 901
    const-string v0, "ac"

    const-string v0, "27"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 902
    :cond_8d
    const-string v2, "028"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    .line 903
    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 904
    :cond_8e
    const-string v0, "ac"

    const-string v0, "24"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 905
    :cond_8f
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 906
    const-string v0, "ac"

    const-string v0, "25"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 907
    :cond_90
    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 908
    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 909
    :cond_91
    const-string v0, "ac"

    const-string v0, "26"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 910
    :cond_92
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 911
    const-string v0, "ac"

    const-string v0, "30"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 912
    :cond_93
    const-string v2, "029"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 913
    :cond_94
    const-string v0, "ac"

    const-string v0, "21"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 914
    :cond_95
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 915
    :cond_96
    const-string v0, "ac"

    const-string v0, "22"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 916
    :cond_97
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 917
    const-string v0, "ac"

    const-string v0, "23"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 918
    :cond_98
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 919
    const-string v0, "ac"

    const-string v0, "28"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 920
    :cond_99
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 921
    :cond_9a
    const-string v0, "ac"

    const-string v0, "31"

    invoke-static {v1, v4, v6}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    :cond_9b
    const-string v2, "023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    const-string v0, "ac"

    const-string v0, "04"

    invoke-static {v1, v4, v0}, Lcom/wooboo/adlib_android/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
