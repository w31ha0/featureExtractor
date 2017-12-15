.class public final Lcom/flurry/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static X:Ljava/lang/String;

.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static final h:Lcom/flurry/android/v;

.field private static i:J

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Landroid/location/Criteria;

.field private static n:Z

.field private static o:Lcom/flurry/android/ad;


# instance fields
.field private A:Landroid/location/LocationManager;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:J

.field private E:Ljava/util/List;

.field private F:J

.field private G:J

.field private H:J

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:B

.field private L:Ljava/lang/String;

.field private M:B

.field private N:Ljava/lang/Long;

.field private O:I

.field private P:Landroid/location/Location;

.field private Q:Ljava/util/Map;

.field private R:Ljava/util/List;

.field private S:Z

.field private T:I

.field private U:Ljava/util/List;

.field private V:I

.field private W:Lcom/flurry/android/l;

.field private final p:Landroid/os/Handler;

.field private q:Ljava/io/File;

.field private volatile r:Z

.field private s:Z

.field private t:J

.field private u:Ljava/util/Map;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    sput-object v2, Lcom/flurry/android/v;->a:Ljava/lang/String;

    .line 62
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/v;->b:Ljava/lang/String;

    .line 63
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/v;->c:Ljava/lang/String;

    .line 65
    sput-object v2, Lcom/flurry/android/v;->d:Ljava/lang/String;

    .line 66
    const-string v0, "http://ad.flurry.com/getCanvas.do"

    sput-object v0, Lcom/flurry/android/v;->e:Ljava/lang/String;

    .line 68
    sput-object v2, Lcom/flurry/android/v;->f:Ljava/lang/String;

    .line 69
    const-string v0, "http://ad.flurry.com/getAndroidApp.do"

    sput-object v0, Lcom/flurry/android/v;->g:Ljava/lang/String;

    .line 103
    new-instance v0, Lcom/flurry/android/v;

    invoke-direct {v0}, Lcom/flurry/android/v;-><init>()V

    sput-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    .line 105
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/flurry/android/v;->i:J

    .line 106
    sput-boolean v4, Lcom/flurry/android/v;->j:Z

    .line 108
    sput-boolean v3, Lcom/flurry/android/v;->k:Z

    .line 112
    sput-boolean v4, Lcom/flurry/android/v;->l:Z

    .line 113
    sput-object v2, Lcom/flurry/android/v;->m:Landroid/location/Criteria;

    .line 115
    sput-boolean v3, Lcom/flurry/android/v;->n:Z

    .line 116
    new-instance v0, Lcom/flurry/android/ad;

    invoke-direct {v0}, Lcom/flurry/android/ad;-><init>()V

    sput-object v0, Lcom/flurry/android/v;->o:Lcom/flurry/android/ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    .line 124
    iput-boolean v2, p0, Lcom/flurry/android/v;->r:Z

    .line 125
    iput-boolean v2, p0, Lcom/flurry/android/v;->s:Z

    .line 127
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/v;->u:Ljava/util/Map;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/v;->y:Z

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/v;->I:Ljava/lang/String;

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/v;->J:Ljava/lang/String;

    .line 148
    iput-byte v1, p0, Lcom/flurry/android/v;->K:B

    .line 150
    iput-byte v1, p0, Lcom/flurry/android/v;->M:B

    .line 240
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 242
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/v;->p:Landroid/os/Handler;

    .line 243
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 599
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    monitor-enter v0

    .line 601
    :try_start_0
    invoke-static {}, Lcom/flurry/android/ak;->a()V

    .line 609
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 397
    if-nez p0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    :try_start_0
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/v;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 407
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 378
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_2
    :try_start_0
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/v;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 391
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 821
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/v;->u:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 824
    if-nez v0, :cond_0

    .line 826
    const-string v0, "FlurryAgent"

    const-string v1, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/v;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/v;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    const-string v0, "FlurryAgent"

    const-string v1, "Ending session"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/flurry/android/v;->g()V

    .line 835
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 837
    :goto_0
    if-eqz p1, :cond_1

    .line 839
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 840
    iget-object v2, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 842
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEndSession called from different application package, expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/v;->r:Z

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 848
    iput-wide v1, p0, Lcom/flurry/android/v;->t:J

    .line 850
    iget-wide v3, p0, Lcom/flurry/android/v;->G:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/flurry/android/v;->H:J

    .line 852
    new-instance v1, Lcom/flurry/android/u;

    invoke-direct {v1, p0, p2, v0}, Lcom/flurry/android/u;-><init>(Lcom/flurry/android/v;ZLandroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/flurry/android/v;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    :cond_2
    monitor-exit p0

    return-void

    .line 835
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/flurry/android/v;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/v;->c(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    invoke-virtual {v0}, Lcom/flurry/android/l;->a()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flurry/android/v;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 14

    .prologue
    .line 1355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1356
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1357
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1358
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1359
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1360
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1363
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v7

    .line 1364
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1365
    packed-switch v7, :pswitch_data_0

    .line 1466
    :pswitch_0
    const-string v8, "FlurryAgent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown chunkType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1470
    :cond_1
    :goto_0
    :pswitch_1
    const/16 v0, 0x108

    if-ne v7, v0, :cond_0

    .line 1472
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    if-eqz v0, :cond_3

    .line 1474
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    const-string v0, "FlurryAgent"

    const-string v7, "No ads from server"

    invoke-static {v0, v7}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/l;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1480
    :cond_3
    return-void

    .line 1368
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    goto :goto_0

    .line 1372
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1374
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 1376
    new-array v9, v8, [Lcom/flurry/android/n;

    .line 1377
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    .line 1379
    new-instance v11, Lcom/flurry/android/n;

    invoke-direct {v11, p1}, Lcom/flurry/android/n;-><init>(Ljava/io/DataInput;)V

    .line 1380
    aput-object v11, v9, v10

    .line 1377
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1383
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1386
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1387
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v0, :cond_1

    .line 1389
    new-instance v9, Lcom/flurry/android/a;

    invoke-direct {v9, p1}, Lcom/flurry/android/a;-><init>(Ljava/io/DataInput;)V

    .line 1390
    iget-wide v10, v9, Lcom/flurry/android/a;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    const-string v10, "FlurryAgent"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parsed image: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v9, Lcom/flurry/android/a;->a:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1395
    :pswitch_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1396
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_1

    .line 1398
    new-instance v9, Lcom/flurry/android/w;

    invoke-direct {v9, p1}, Lcom/flurry/android/w;-><init>(Ljava/io/DataInput;)V

    .line 1399
    iget-object v10, v9, Lcom/flurry/android/w;->a:Ljava/lang/String;

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1405
    :pswitch_6
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1408
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1409
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_1

    .line 1411
    new-instance v9, Lcom/flurry/android/t;

    invoke-direct {v9, p1}, Lcom/flurry/android/t;-><init>(Ljava/io/DataInput;)V

    .line 1412
    iget-byte v10, v9, Lcom/flurry/android/t;->a:B

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1417
    :pswitch_8
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 1418
    const/4 v0, 0x0

    move v9, v0

    :goto_5
    if-ge v9, v8, :cond_1

    .line 1420
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1421
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/t;

    .line 1422
    if-eqz v0, :cond_5

    .line 1424
    invoke-virtual {v0, p1}, Lcom/flurry/android/t;->a(Ljava/io/DataInput;)V

    .line 1418
    :cond_5
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_5

    .line 1430
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1432
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v0, :cond_1

    .line 1434
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    .line 1435
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    .line 1436
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v6, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1440
    :pswitch_a
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 1442
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/af;

    .line 1443
    if-nez v0, :cond_6

    .line 1445
    new-instance v0, Lcom/flurry/android/af;

    invoke-direct {v0}, Lcom/flurry/android/af;-><init>()V

    .line 1447
    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/flurry/android/af;->a:Ljava/lang/String;

    .line 1448
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iput v10, v0, Lcom/flurry/android/af;->c:I

    .line 1449
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1456
    :pswitch_b
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1460
    :pswitch_c
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto/16 :goto_0

    .line 1365
    nop

    :pswitch_data_0
    .packed-switch 0x102
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/flurry/android/v;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1009
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 487
    :try_start_0
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/android/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 491
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 685
    :try_start_0
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/v;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 689
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/v;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/flurry/android/v;->s:Z

    return v0
.end method

.method private a([B)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1254
    sget-object v0, Lcom/flurry/android/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/v;->a:Ljava/lang/String;

    .line 1255
    :goto_0
    if-nez v0, :cond_2

    move v0, v4

    .line 1272
    :cond_0
    :goto_1
    return v0

    .line 1254
    :cond_1
    sget-object v0, Lcom/flurry/android/v;->b:Ljava/lang/String;

    goto :goto_0

    .line 1262
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/flurry/android/v;->a([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1268
    :goto_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/flurry/android/v;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1264
    :catch_0
    move-exception v0

    .line 1266
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending report exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_2
.end method

.method private a([BLjava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1296
    const-string v0, "local"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 1326
    :goto_0
    return v0

    .line 1301
    :cond_0
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v0, 0x0

    .line 1303
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1304
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 1305
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1307
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1308
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 1309
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 1310
    monitor-enter p0

    .line 1312
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 1314
    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v2, "Report successful"

    invoke-static {v0, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/v;->C:Z

    .line 1316
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    iget-object v2, p0, Lcom/flurry/android/v;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1318
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "FlurryAgent"

    const-string v2, "Processing report response"

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lcom/flurry/android/v;->a(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    move v0, v5

    .line 1324
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1325
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/v;->z:Ljava/util/List;

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v1

    .line 1324
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move v0, v5

    .line 1318
    goto :goto_1

    .line 1322
    :cond_2
    :try_start_4
    const-string v1, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report failed. HTTP response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method private declared-synchronized a(Z)[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1127
    monitor-enter p0

    .line 1131
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1132
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1134
    const/16 v0, 0xf

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1135
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1137
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1144
    :goto_0
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    if-eqz v0, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    invoke-virtual {v0}, Lcom/flurry/android/l;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1148
    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    invoke-virtual {v0}, Lcom/flurry/android/l;->d()Ljava/util/Set;

    move-result-object v0

    .line 1149
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1152
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1153
    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1202
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1204
    :goto_2
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1208
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v7

    .line 1211
    :goto_3
    monitor-exit p0

    return-object v0

    .line 1141
    :cond_0
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1127
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1158
    :cond_1
    const-wide/16 v3, 0x0

    :try_start_6
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1159
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1162
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1163
    const/16 v0, 0x70

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1165
    iget-object v0, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/flurry/android/v;->x:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1168
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1169
    iget-object v0, p0, Lcom/flurry/android/v;->B:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1171
    iget-wide v3, p0, Lcom/flurry/android/v;->D:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1172
    iget-wide v3, p0, Lcom/flurry/android/v;->F:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1175
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1176
    const-string v0, "device.model"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1177
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1178
    const-string v0, "build.brand"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1179
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1180
    const-string v0, "build.id"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1181
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1182
    const-string v0, "version.release"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1183
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1184
    const-string v0, "build.device"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1185
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1186
    const-string v0, "build.product"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1187
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1190
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v4, v6

    .line 1191
    :goto_5
    if-ge v4, v3, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1194
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1191
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 1197
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/v;->z:Ljava/util/List;

    .line 1199
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1200
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 1208
    :try_start_7
    invoke-static {v2}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v7

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    .line 1202
    :catch_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_2
.end method

.method static b()Lcom/flurry/android/l;
    .locals 1

    .prologue
    .line 695
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    iget-object v0, v0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1710
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1711
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1712
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1714
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1725
    :goto_0
    return-object v0

    .line 1716
    :cond_0
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_1

    .line 1718
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1721
    :catch_0
    move-exception v0

    .line 1723
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    :cond_1
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    const-string v0, "FlurryAgent"

    const-string v1, "startSession called"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession called with different api keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/v;->u:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 708
    if-eqz v0, :cond_1

    .line 710
    const-string v0, "FlurryAgent"

    const-string v1, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/v;->r:Z

    if-nez v0, :cond_7

    .line 714
    const-string v0, "FlurryAgent"

    const-string v1, "Initializing Flurry session"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iput-object p2, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    .line 718
    sget-boolean v0, Lcom/flurry/android/v;->l:Z

    if-eqz v0, :cond_2

    .line 720
    new-instance v0, Lcom/flurry/android/b;

    invoke-direct {v0}, Lcom/flurry/android/b;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 723
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/flurry/android/v;->x:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 727
    invoke-static {v0}, Lcom/flurry/android/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/v;->x:Ljava/lang/String;

    .line 729
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 730
    iget-object v2, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 732
    const-string v2, "FlurryAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartSession called from different application packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_4
    iput-object v1, p0, Lcom/flurry/android/v;->w:Ljava/lang/String;

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 737
    iget-wide v3, p0, Lcom/flurry/android/v;->t:J

    sub-long v3, v1, v3

    sget-wide v5, Lcom/flurry/android/v;->i:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 739
    const-string v3, "FlurryAgent"

    const-string v4, "Starting new session"

    invoke-static {v3, v4}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AND"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/flurry/android/v;->B:Ljava/lang/String;

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/flurry/android/v;->F:J

    .line 745
    iput-wide v1, p0, Lcom/flurry/android/v;->G:J

    .line 746
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/flurry/android/v;->H:J

    .line 747
    const-string v1, ""

    iput-object v1, p0, Lcom/flurry/android/v;->L:Ljava/lang/String;

    .line 748
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/v;->O:I

    .line 749
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    .line 750
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/v;->J:Ljava/lang/String;

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/v;->I:Ljava/lang/String;

    .line 752
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    .line 754
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/v;->S:Z

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    .line 756
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/v;->T:I

    .line 757
    const/4 v1, 0x0

    iput v1, p0, Lcom/flurry/android/v;->V:I

    .line 761
    sget-boolean v1, Lcom/flurry/android/v;->n:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    if-nez v1, :cond_6

    .line 763
    const-string v1, "FlurryAgent"

    const-string v2, "Initializing AppCircle"

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v1, Lcom/flurry/android/s;

    invoke-direct {v1}, Lcom/flurry/android/s;-><init>()V

    .line 766
    iget-object v2, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/s;->a:Ljava/lang/String;

    .line 767
    iget-object v2, p0, Lcom/flurry/android/v;->B:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/s;->b:Ljava/lang/String;

    .line 768
    iget-wide v2, p0, Lcom/flurry/android/v;->D:J

    iput-wide v2, v1, Lcom/flurry/android/s;->c:J

    .line 769
    iget-wide v2, p0, Lcom/flurry/android/v;->F:J

    iput-wide v2, v1, Lcom/flurry/android/s;->d:J

    .line 770
    iget-wide v2, p0, Lcom/flurry/android/v;->G:J

    iput-wide v2, v1, Lcom/flurry/android/s;->e:J

    .line 771
    sget-object v2, Lcom/flurry/android/v;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/flurry/android/v;->d:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/flurry/android/s;->f:Ljava/lang/String;

    .line 772
    sget-object v2, Lcom/flurry/android/v;->f:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/flurry/android/v;->f:Ljava/lang/String;

    :goto_2
    iput-object v2, v1, Lcom/flurry/android/s;->g:Ljava/lang/String;

    .line 773
    iget-object v2, p0, Lcom/flurry/android/v;->p:Landroid/os/Handler;

    iput-object v2, v1, Lcom/flurry/android/s;->h:Landroid/os/Handler;

    .line 775
    new-instance v2, Lcom/flurry/android/l;

    invoke-direct {v2, p1, v1}, Lcom/flurry/android/l;-><init>(Landroid/content/Context;Lcom/flurry/android/s;)V

    iput-object v2, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    .line 776
    sget-object v1, Lcom/flurry/android/v;->X:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 778
    sget-object v1, Lcom/flurry/android/v;->X:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/l;->a(Ljava/lang/String;)V

    .line 781
    :cond_5
    const-string v1, "FlurryAgent"

    const-string v2, "AppCircle initialized"

    invoke-static {v1, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_6
    iget-boolean v1, p0, Lcom/flurry/android/v;->y:Z

    .line 785
    new-instance v2, Lcom/flurry/android/x;

    invoke-direct {v2, p0, v0, v1}, Lcom/flurry/android/x;-><init>(Lcom/flurry/android/v;Landroid/content/Context;Z)V

    invoke-direct {p0, v2}, Lcom/flurry/android/v;->a(Ljava/lang/Runnable;)V

    .line 815
    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/v;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    :cond_7
    monitor-exit p0

    return-void

    .line 741
    :cond_8
    :try_start_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    mul-int/lit8 v9, v9, 0x25

    int-to-long v9, v9

    add-long/2addr v7, v9

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v3, v4, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 771
    :cond_9
    sget-object v2, Lcom/flurry/android/v;->e:Ljava/lang/String;

    goto :goto_1

    .line 772
    :cond_a
    sget-object v2, Lcom/flurry/android/v;->g:Ljava/lang/String;

    goto :goto_2

    .line 801
    :cond_b
    const-string v0, "FlurryAgent"

    const-string v1, "Continuing previous session"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v0, Lcom/flurry/android/r;

    invoke-direct {v0, p0}, Lcom/flurry/android/r;-><init>(Lcom/flurry/android/v;)V

    invoke-direct {p0, v0}, Lcom/flurry/android/v;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/flurry/android/v;)V
    .locals 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const v1, 0xb5fa

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/flurry/android/v;->b(Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v2}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/flurry/android/v;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FlurryAgent"

    const-string v1, "Cannot delete persistence file"

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/v;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/v;->C:Z

    iget-wide v0, p0, Lcom/flurry/android/v;->F:J

    iput-wide v0, p0, Lcom/flurry/android/v;->D:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/v;->s:Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_3
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private declared-synchronized b(Ljava/io/DataInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 1601
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1603
    if-le v0, v1, :cond_0

    .line 1605
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown agent file version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1608
    :cond_0
    if-lt v0, v1, :cond_2

    .line 1610
    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 1611
    iget-object v1, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1613
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/v;->B:Ljava/lang/String;

    .line 1614
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/v;->C:Z

    .line 1615
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/v;->D:J

    .line 1619
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1620
    if-eqz v0, :cond_1

    .line 1622
    new-array v0, v0, [B

    .line 1625
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1626
    iget-object v1, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1629
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/v;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1636
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1633
    :cond_3
    :try_start_2
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Api keys do not match, old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1108
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called before onStartSession.  Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1112
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/flurry/android/v;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/v;->O:I

    .line 1113
    iget-object v0, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1115
    new-instance v0, Lcom/flurry/android/z;

    invoke-direct {v0}, Lcom/flurry/android/z;-><init>()V

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/flurry/android/z;->a:J

    .line 1117
    const/16 v1, 0x80

    invoke-static {p1, v1}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/z;->b:Ljava/lang/String;

    .line 1118
    const/16 v1, 0x200

    invoke-static {p2, v1}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/z;->c:Ljava/lang/String;

    .line 1119
    const/16 v1, 0x80

    invoke-static {p3, v1}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/z;->d:Ljava/lang/String;

    .line 1120
    iget-object v1, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x1f40

    .line 1018
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1020
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1024
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/v;->G:J

    sub-long v3, v0, v2

    .line 1026
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/flurry/android/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    .line 1032
    if-nez v0, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v7, :cond_3

    .line 1036
    new-instance v0, Lcom/flurry/android/f;

    invoke-direct {v0}, Lcom/flurry/android/f;-><init>()V

    .line 1037
    const/4 v2, 0x1

    iput v2, v0, Lcom/flurry/android/f;->a:I

    .line 1038
    iget-object v2, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/flurry/android/v;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_7

    iget v0, p0, Lcom/flurry/android/v;->T:I

    if-ge v0, v6, :cond_7

    .line 1057
    if-nez p2, :cond_8

    .line 1059
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    .line 1061
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_5

    .line 1063
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MaxEventParams exceeded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1042
    :cond_3
    :try_start_2
    const-string v0, "FlurryAgent"

    invoke-static {v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    const-string v0, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaxEventIds exceeded: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1050
    :cond_4
    iget v2, v0, Lcom/flurry/android/f;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/flurry/android/f;->a:I

    goto :goto_1

    .line 1070
    :cond_5
    new-instance v0, Lcom/flurry/android/i;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/i;-><init>(Ljava/lang/String;Ljava/util/Map;JZ)V

    .line 1072
    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lcom/flurry/android/v;->T:I

    add-int/2addr v1, v2

    if-gt v1, v6, :cond_6

    .line 1074
    iget-object v1, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    iget v1, p0, Lcom/flurry/android/v;->T:I

    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/v;->T:I

    goto/16 :goto_0

    .line 1080
    :cond_6
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/flurry/android/v;->T:I

    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/v;->S:Z

    goto/16 :goto_0

    .line 1087
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/v;->S:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v2, p2

    goto/16 :goto_2
.end method

.method private b(Z)V
    .locals 3

    .prologue
    .line 1497
    :try_start_0
    invoke-direct {p0, p1}, Lcom/flurry/android/v;->a(Z)[B

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_0

    .line 1500
    invoke-direct {p0, v0}, Lcom/flurry/android/v;->a([B)Z

    move-result v0

    .line 1501
    if-eqz v0, :cond_0

    .line 1503
    const-string v0, "FlurryAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/v;->r:Z

    if-eqz v2, :cond_1

    const-string v2, "initial "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "agent report"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-direct {p0}, Lcom/flurry/android/v;->f()V

    .line 1518
    :cond_0
    :goto_1
    return-void

    .line 1503
    :cond_1
    const-string v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1512
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1514
    :catch_1
    move-exception v0

    .line 1516
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)Landroid/location/Location;
    .locals 7

    .prologue
    .line 1730
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1733
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1734
    monitor-enter p0

    .line 1736
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/v;->A:Landroid/location/LocationManager;

    if-nez v1, :cond_2

    .line 1738
    iput-object v0, p0, Lcom/flurry/android/v;->A:Landroid/location/LocationManager;

    .line 1744
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    sget-object v1, Lcom/flurry/android/v;->m:Landroid/location/Criteria;

    .line 1746
    if-nez v1, :cond_1

    .line 1748
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 1750
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1751
    if-eqz v1, :cond_3

    .line 1753
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1754
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1757
    :goto_1
    return-object v0

    .line 1742
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/v;->A:Landroid/location/LocationManager;

    goto :goto_0

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1757
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c()Lcom/flurry/android/v;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/flurry/android/v;->h:Lcom/flurry/android/v;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/v;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/flurry/android/v;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/flurry/android/v;)V
    .locals 7

    .prologue
    .line 47
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->x:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/flurry/android/v;->F:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/flurry/android/v;->H:J

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/v;->I:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/v;->J:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/android/v;->K:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->L:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_0
    iget v0, p0, Lcom/flurry/android/v;->V:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/flurry/android/v;->M:B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->N:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_1
    iget-object v0, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    iget v0, v0, Lcom/flurry/android/f;->a:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_3
    :try_start_2
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    :goto_4
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v0, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v0, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_5
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/flurry/android/v;->N:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/i;

    invoke-virtual {v0}, Lcom/flurry/android/i;->a()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    :cond_3
    iget-boolean v0, p0, Lcom/flurry/android/v;->S:Z

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v0, p0, Lcom/flurry/android/v;->O:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/v;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/z;

    iget-wide v4, v0, Lcom/flurry/android/z;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v4, v0, Lcom/flurry/android/z;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/flurry/android/z;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/flurry/android/z;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_7

    :cond_4
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    invoke-virtual {v0}, Lcom/flurry/android/l;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/aj;

    invoke-virtual {v0, v3}, Lcom/flurry/android/aj;->a(Ljava/io/DataOutput;)V

    goto :goto_8

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_6
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_3
.end method

.method static synthetic e(Lcom/flurry/android/v;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flurry/android/v;->f()V

    return-void
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/flurry/android/v;->n:Z

    return v0
.end method

.method private declared-synchronized f()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1640
    monitor-enter p0

    .line 1644
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1645
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1646
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1649
    const-string v1, "FlurryAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create persistent dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1683
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    :goto_0
    monitor-exit p0

    return-void

    .line 1652
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/v;->q:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1653
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1654
    const v0, 0xb5fa

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1655
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1657
    iget-object v0, p0, Lcom/flurry/android/v;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/flurry/android/v;->B:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1659
    iget-boolean v0, p0, Lcom/flurry/android/v;->C:Z

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 1660
    iget-wide v2, p0, Lcom/flurry/android/v;->D:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1664
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1667
    array-length v3, v0

    .line 1668
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    const v5, 0xc350

    if-gt v4, v5, :cond_1

    .line 1670
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1673
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1664
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1675
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1683
    :try_start_4
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1677
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1679
    :goto_2
    :try_start_5
    const-string v2, "FlurryAgent"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1683
    :try_start_6
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_3
    invoke-static {v1}, Lcom/flurry/android/d;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1677
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic f(Lcom/flurry/android/v;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/android/v;->r:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/v;->t:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/flurry/android/v;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/v;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/flurry/android/v;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic g(Lcom/flurry/android/v;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/v;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .prologue
    .line 1762
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/v;->A:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/flurry/android/v;->A:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    :cond_0
    monitor-exit p0

    return-void

    .line 1762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/flurry/android/v;)Lcom/flurry/android/l;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/v;->W:Lcom/flurry/android/l;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    const-string v0, ""

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 214
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    const-string v2, "uncaught"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/flurry/android/v;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/v;->a(Landroid/content/Context;Z)V

    .line 236
    return-void

    .line 227
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 1778
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/android/v;->P:Landroid/location/Location;

    .line 1779
    invoke-direct {p0}, Lcom/flurry/android/v;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    :goto_0
    monitor-exit p0

    return-void

    .line 1781
    :catch_0
    move-exception v0

    .line 1783
    :try_start_1
    const-string v1, "FlurryAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/ak;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1791
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1797
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1803
    return-void
.end method
