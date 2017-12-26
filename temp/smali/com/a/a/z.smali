.class Lcom/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final j:Ljava/io/File;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Landroid/content/BroadcastReceiver;

.field private final n:Lcom/a/a/t;

.field private final o:Lb/a/a/a/a/b/z;

.field private p:Z

.field private final q:Lcom/a/a/h;

.field private final r:Lcom/a/a/av;

.field private final s:Lcom/a/a/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/a/a/aa;

    invoke-direct {v0}, Lcom/a/a/aa;-><init>()V

    sput-object v0, Lcom/a/a/z;->a:Ljava/io/FilenameFilter;

    .line 130
    new-instance v0, Lcom/a/a/ag;

    invoke-direct {v0}, Lcom/a/a/ag;-><init>()V

    sput-object v0, Lcom/a/a/z;->b:Ljava/util/Comparator;

    .line 137
    new-instance v0, Lcom/a/a/ah;

    invoke-direct {v0}, Lcom/a/a/ah;-><init>()V

    sput-object v0, Lcom/a/a/z;->c:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lcom/a/a/ai;

    invoke-direct {v0}, Lcom/a/a/ai;-><init>()V

    sput-object v0, Lcom/a/a/z;->d:Ljava/io/FilenameFilter;

    .line 154
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/a/a/z;->e:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/a/a/z;->f:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/a/a/w;Lcom/a/a/t;Lb/a/a/a/a/b/z;Lcom/a/a/bo;Lcom/a/a/h;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/z;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/z;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    iput-object p1, p0, Lcom/a/a/z;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 218
    iput-object p3, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    .line 219
    iput-object p4, p0, Lcom/a/a/z;->o:Lb/a/a/a/a/b/z;

    .line 220
    iput-object p6, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    .line 221
    iput-object p5, p0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    invoke-virtual {p6}, Lcom/a/a/h;->u()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    .line 224
    new-instance v0, Lcom/a/a/av;

    invoke-virtual {p6}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/z;->j:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/a/a/av;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v0, p0, Lcom/a/a/z;->r:Lcom/a/a/av;

    .line 226
    invoke-direct {p0, p2}, Lcom/a/a/z;->a(Lcom/a/a/w;)V

    .line 228
    new-instance v0, Lcom/a/a/aj;

    invoke-direct {v0, p0}, Lcom/a/a/aj;-><init>(Lcom/a/a/z;)V

    iput-object v0, p0, Lcom/a/a/z;->m:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance v1, Lcom/a/a/ak;

    invoke-direct {v1, p0}, Lcom/a/a/ak;-><init>(Lcom/a/a/z;)V

    iput-object v1, p0, Lcom/a/a/z;->l:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p6}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/a/a/z;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/a/a/z;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/a/a/z;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 251
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/z;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(I)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 683
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 685
    invoke-virtual {p0}, Lcom/a/a/z;->e()[Ljava/io/File;

    move-result-object v3

    .line 686
    sget-object v1, Lcom/a/a/z;->b:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 687
    array-length v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 689
    :goto_0
    if-ge v1, v4, :cond_0

    .line 690
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lcom/a/a/z;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 691
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_0
    new-instance v1, Lcom/a/a/an;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/a/a/an;-><init>(Lcom/a/a/aa;)V

    invoke-direct {p0, v1}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 696
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 697
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 698
    sget-object v6, Lcom/a/a/z;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 700
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 701
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 704
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v6

    const-string v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Trimming open session file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 696
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    :cond_2
    return-void
.end method

.method private a(Lcom/a/a/c/a/c;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 420
    .line 423
    :try_start_0
    invoke-direct {p0}, Lcom/a/a/z;->j()Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_0

    .line 426
    new-instance v1, Lcom/a/a/d;

    iget-object v3, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionCrash"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :try_start_1
    invoke-static {v1}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 429
    :try_start_2
    invoke-static {p1, v0}, Lcom/a/a/ax;->a(Lcom/a/a/c/a/c;Lcom/a/a/f;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 439
    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 442
    :goto_1
    return-void

    .line 431
    :cond_0
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 435
    :goto_2
    :try_start_4
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 439
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 440
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 439
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 434
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private a(Lcom/a/a/d;)V
    .locals 4

    .prologue
    .line 601
    if-eqz p1, :cond_0

    .line 603
    :try_start_0
    invoke-virtual {p1}, Lcom/a/a/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/a/a/f;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1140
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1143
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1148
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    const/4 v0, 0x0

    .line 1153
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1155
    add-int/2addr v0, v2

    goto :goto_0

    .line 1158
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p1, v3}, Lcom/a/a/f;->a([B)V

    .line 1166
    :goto_1
    return-void

    .line 1158
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1158
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/a/a/f;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1117
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 1121
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1122
    new-instance v5, Lcom/a/a/ao;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1125
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1126
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v6

    const-string v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    aget-object v4, v5, v1

    invoke-direct {p0, p1, v4}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/io/File;)V

    goto :goto_1

    .line 1134
    :cond_1
    return-void
.end method

.method private a(Lcom/a/a/f;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 22

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v1}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v6

    .line 908
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    .line 909
    invoke-static {v6}, Lb/a/a/a/a/b/m;->c(Landroid/content/Context;)F

    move-result v9

    .line 910
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/a/a/z;->p:Z

    invoke-static {v6, v1}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Z)I

    move-result v10

    .line 911
    invoke-static {v6}, Lb/a/a/a/a/b/m;->d(Landroid/content/Context;)Z

    move-result v11

    .line 912
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v12, v1, Landroid/content/res/Configuration;->orientation:I

    .line 913
    invoke-static {}, Lb/a/a/a/a/b/m;->b()J

    move-result-wide v1

    invoke-static {v6}, Lb/a/a/a/a/b/m;->b(Landroid/content/Context;)J

    move-result-wide v7

    sub-long v13, v1, v7

    .line 915
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a/a/b/m;->b(Ljava/lang/String;)J

    move-result-wide v15

    .line 918
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lb/a/a/a/a/b/m;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v17

    .line 920
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 921
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v19

    .line 924
    if-eqz p6, :cond_0

    .line 925
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    .line 926
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v8, v1, [Ljava/lang/Thread;

    .line 927
    const/4 v1, 0x0

    .line 928
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 929
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    aput-object v2, v8, v5

    .line 930
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    .line 932
    goto :goto_0

    .line 936
    :cond_0
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/Thread;

    .line 940
    :cond_1
    const-string v1, "com.crashlytics.CollectCustomKeys"

    const/4 v2, 0x1

    invoke-static {v6, v1, v2}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 941
    new-instance v21, Ljava/util/TreeMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    .line 952
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/z;->r:Lcom/a/a/av;

    invoke-virtual {v2}, Lcom/a/a/av;->a()Lb/a/a/a/a/b/ad;

    move-result-object v20

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v21}, Lcom/a/a/bo;->a(Lcom/a/a/f;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;Lb/a/a/a/a/b/ad;Ljava/util/Map;)V

    .line 956
    return-void

    .line 943
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v1}, Lcom/a/a/h;->g()Ljava/util/Map;

    move-result-object v1

    .line 944
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 948
    new-instance v21, Ljava/util/TreeMap;

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object/from16 v21, v1

    goto :goto_1
.end method

.method private a(Lcom/a/a/f;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1102
    sget-object v1, Lb/a/a/a/a/b/m;->a:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1104
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 1106
    :try_start_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p3, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-direct {p0, p1, v0}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1114
    :cond_0
    return-void
.end method

.method private a(Lcom/a/a/w;)V
    .locals 4

    .prologue
    .line 318
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Checking for previous crash marker."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v1}, Lcom/a/a/h;->u()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 325
    if-eqz p1, :cond_0

    .line 327
    :try_start_0
    invoke-interface {p1}, Lcom/a/a/w;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/a/a/z;Lcom/a/a/c/a/c;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/a/a/z;->a(Lcom/a/a/c/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/z;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1019
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v3, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collecting session parts for ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lcom/a/a/ao;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SessionCrash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1023
    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 1024
    :goto_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v5, "Fabric"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Session %s has fatal exception: %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p2, v9, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    new-instance v3, Lcom/a/a/ao;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1029
    if-eqz v5, :cond_4

    array-length v3, v5

    if-lez v3, :cond_4

    move v3, v1

    .line 1030
    :goto_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v7

    const-string v8, "Fabric"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Session %s has non-fatal exceptions: %s"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p2, v11, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    .line 1039
    :cond_0
    :try_start_0
    new-instance v2, Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/z;->j:Ljava/io/File;

    invoke-direct {v2, v1, p2}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :try_start_1
    invoke-static {v2}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1042
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v4

    const-string v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collecting SessionStart data for session ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-direct {p0, v1, p1}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/io/File;)V

    .line 1046
    const/4 v4, 0x4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v1, v4, v7, v8}, Lcom/a/a/f;->a(IJ)V

    .line 1047
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v0}, Lcom/a/a/f;->a(IZ)V

    .line 1049
    invoke-direct {p0, v1, p2}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/lang/String;)V

    .line 1051
    if-eqz v3, :cond_1

    .line 1052
    array-length v3, v5

    if-le v3, p3, :cond_6

    .line 1053
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Trimming down to %d logged exceptions."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, p2, p3}, Lcom/a/a/z;->a(Ljava/lang/String;I)V

    .line 1057
    new-instance v3, Lcom/a/a/ao;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1061
    :goto_2
    invoke-direct {p0, v1, v3, p2}, Lcom/a/a/z;->a(Lcom/a/a/f;[Ljava/io/File;Ljava/lang/String;)V

    .line 1064
    :cond_1
    if-eqz v0, :cond_2

    .line 1065
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {p0, v1, v0}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/io/File;)V

    .line 1068
    :cond_2
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/a/a/f;->b(II)V

    .line 1070
    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/a/a/f;->c(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1080
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1089
    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1096
    :goto_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing session part files for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0, p2}, Lcom/a/a/z;->a(Ljava/lang/String;)V

    .line 1098
    return-void

    :cond_3
    move v0, v2

    .line 1023
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 1029
    goto/16 :goto_1

    .line 1071
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1072
    :goto_4
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write session file for session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1074
    invoke-static {v0, v4}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1080
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0, v4}, Lcom/a/a/z;->a(Lcom/a/a/d;)V

    goto :goto_3

    .line 1080
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_5
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1089
    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_5
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No events present for session ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1080
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v4

    goto :goto_5

    .line 1071
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v3, v5

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/a/a/z;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 616
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 660
    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v1, Lcom/a/a/ao;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/a/a/z;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/a/a/bq;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 662
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Date;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 776
    .line 779
    :try_start_0
    new-instance v6, Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BeginSession"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v2}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    :try_start_1
    invoke-static {v6}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 782
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Crashlytics Android SDK/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v5}, Lcom/a/a/h;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    .line 786
    iget-object v0, p0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/bo;->a(Lcom/a/a/f;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 791
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 792
    const-string v0, "Failed to close begin session file."

    invoke-static {v6, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 794
    return-void

    .line 787
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 788
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 789
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    :catchall_0
    move-exception v0

    move-object v6, v2

    :goto_1
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 792
    const-string v1, "Failed to close begin session file."

    invoke-static {v6, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 791
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 787
    :catch_1
    move-exception v0

    move-object v2, v6

    goto :goto_0
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/z;->b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 299
    invoke-direct {p0}, Lcom/a/a/z;->l()V

    .line 300
    invoke-direct {p0}, Lcom/a/a/z;->k()V

    .line 302
    invoke-virtual {p0}, Lcom/a/a/z;->f()V

    .line 304
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/a/a/z;->o()V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/a/a/z;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/a/a/z;->p:Z

    return p1
.end method

.method static synthetic a(Lcom/a/a/z;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/z;->b([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/z;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/a/a/z;->k()V

    return-void
.end method

.method static synthetic b(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/z;->c(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 378
    .line 383
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/a/a/z;->j:Ljava/io/File;

    const-string v3, "crash_marker"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 385
    invoke-direct {p0}, Lcom/a/a/z;->j()Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_0

    .line 390
    invoke-static {v0}, Lcom/a/a/h;->b(Ljava/lang/String;)V

    .line 392
    new-instance v7, Lcom/a/a/d;

    iget-object v2, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :try_start_1
    invoke-static {v7}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 394
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    .line 404
    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 407
    :goto_1
    return-void

    .line 396
    :cond_0
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    move-object v7, v1

    .line 400
    :goto_2
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "An error occurred in the fatal exception logger"

    invoke-interface {v2, v3, v4, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-static {v0, v7}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_3
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v1, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 405
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v7, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 404
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 399
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/a/a/ap;

    invoke-direct {v0, p1}, Lcom/a/a/ap;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 647
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lcom/a/a/z;)Lcom/a/a/h;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 797
    .line 800
    :try_start_0
    new-instance v7, Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 801
    :try_start_1
    invoke-static {v7}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 803
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->h()Ljava/lang/String;

    move-result-object v2

    .line 804
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->k()Ljava/lang/String;

    move-result-object v3

    .line 805
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->j()Ljava/lang/String;

    move-result-object v4

    .line 806
    iget-object v0, p0, Lcom/a/a/z;->o:Lb/a/a/a/a/b/z;

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->b()Ljava/lang/String;

    move-result-object v5

    .line 807
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/t;->a(Ljava/lang/String;)Lb/a/a/a/a/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/t;->a()I

    move-result v6

    .line 810
    iget-object v0, p0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    invoke-virtual/range {v0 .. v6}, Lcom/a/a/bo;->a(Lcom/a/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 817
    const-string v0, "Failed to flush to session app file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v0, "Failed to close session app file."

    invoke-static {v7, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 820
    return-void

    .line 813
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 814
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 815
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 817
    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_1
    const-string v2, "Failed to flush to session app file."

    invoke-static {v1, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 818
    const-string v1, "Failed to close session app file."

    invoke-static {v7, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 817
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 813
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_0
.end method

.method private c(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 967
    invoke-direct {p0}, Lcom/a/a/z;->j()Ljava/lang/String;

    move-result-object v8

    .line 969
    if-eqz v8, :cond_0

    .line 972
    invoke-static {v8}, Lcom/a/a/h;->a(Ljava/lang/String;)V

    .line 977
    :try_start_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics is logging non-fatal exception \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/a/a/z;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    new-instance v7, Lcom/a/a/d;

    iget-object v2, p0, Lcom/a/a/z;->j:Ljava/io/File;

    invoke-direct {v7, v2, v0}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    :try_start_1
    invoke-static {v7}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 988
    const-string v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/a/a/z;->a(Lcom/a/a/f;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 994
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 995
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1001
    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/a/a/z;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1010
    :goto_1
    return-void

    .line 989
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 990
    :goto_2
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 994
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 995
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    const-string v3, "Failed to flush to non-fatal file."

    invoke-static {v1, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 995
    const-string v1, "Failed to close non-fatal file output stream."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1002
    :catch_1
    move-exception v0

    .line 1003
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1007
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v2, v3, v1}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 994
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 989
    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_2
.end method

.method static synthetic d(Lcom/a/a/z;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/a/a/z;->l()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 823
    .line 827
    :try_start_0
    new-instance v2, Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 829
    :try_start_1
    invoke-static {v2}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 831
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->g(Landroid/content/Context;)Z

    move-result v0

    .line 833
    iget-object v3, p0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    invoke-virtual {v3, v1, v0}, Lcom/a/a/bo;->a(Lcom/a/a/f;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 838
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 839
    const-string v0, "Failed to close session OS file."

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 841
    return-void

    .line 834
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 835
    :goto_0
    :try_start_2
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 836
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 838
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 839
    const-string v1, "Failed to close session OS file."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 838
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 834
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 845
    const/4 v3, 0x0

    .line 846
    const/4 v2, 0x0

    .line 848
    :try_start_0
    new-instance v16, Lcom/a/a/d;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionDevice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 849
    :try_start_1
    invoke-static/range {v16 .. v16}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v2

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v1}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v1

    .line 852
    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/z;->o:Lb/a/a/a/a/b/z;

    invoke-virtual {v3}, Lb/a/a/a/a/b/z;->f()Ljava/lang/String;

    move-result-object v3

    .line 855
    invoke-static {}, Lb/a/a/a/a/b/m;->a()I

    move-result v4

    .line 856
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v6

    .line 857
    invoke-static {}, Lb/a/a/a/a/b/m;->b()J

    move-result-wide v7

    .line 858
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v11, v5

    mul-long/2addr v9, v11

    .line 859
    invoke-static {v1}, Lb/a/a/a/a/b/m;->f(Landroid/content/Context;)Z

    move-result v11

    .line 861
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/z;->o:Lb/a/a/a/a/b/z;

    invoke-virtual {v5}, Lb/a/a/a/a/b/z;->g()Ljava/util/Map;

    move-result-object v12

    .line 863
    invoke-static {v1}, Lb/a/a/a/a/b/m;->h(Landroid/content/Context;)I

    move-result v13

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v1 .. v15}, Lcom/a/a/bo;->a(Lcom/a/a/f;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 873
    const-string v1, "Failed to flush session device info."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 874
    const-string v1, "Failed to close session device file."

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 876
    return-void

    .line 869
    :catch_0
    move-exception v1

    .line 870
    :goto_0
    :try_start_2
    invoke-static {v1, v3}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 871
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 873
    :catchall_0
    move-exception v1

    move-object/from16 v16, v3

    :goto_1
    const-string v3, "Failed to flush session device info."

    invoke-static {v2, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 874
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    .line 873
    :catchall_1
    move-exception v1

    move-object/from16 v16, v3

    goto :goto_1

    :catchall_2
    move-exception v1

    goto :goto_1

    .line 869
    :catch_1
    move-exception v1

    move-object/from16 v3, v16

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 879
    .line 882
    :try_start_0
    new-instance v2, Lcom/a/a/d;

    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SessionUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/a/a/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 883
    :try_start_1
    invoke-static {v2}, Lcom/a/a/f;->a(Ljava/io/OutputStream;)Lcom/a/a/f;

    move-result-object v1

    .line 885
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->n()Ljava/lang/String;

    move-result-object v0

    .line 886
    iget-object v3, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v3}, Lcom/a/a/h;->p()Ljava/lang/String;

    move-result-object v3

    .line 887
    iget-object v4, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v4}, Lcom/a/a/h;->o()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 890
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 899
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 902
    :goto_0
    return-void

    .line 894
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/a/a/z;->s:Lcom/a/a/bo;

    invoke-virtual {v5, v1, v0, v3, v4}, Lcom/a/a/bo;->a(Lcom/a/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v0, "Failed to close session user file."

    invoke-static {v2, v0}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 896
    :goto_1
    :try_start_3
    invoke-static {v0, v2}, Lcom/a/a/au;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 897
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 899
    :catchall_0
    move-exception v0

    :goto_2
    const-string v3, "Failed to flush session user file."

    invoke-static {v1, v3}, Lb/a/a/a/a/b/m;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 900
    const-string v1, "Failed to close session user file."

    invoke-static {v2, v1}, Lb/a/a/a/a/b/m;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 899
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 895
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic h()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/a/a/z;->e:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/a/a/z;->f:Ljava/util/Map;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 473
    new-instance v0, Lcom/a/a/ao;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/a/a/z;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 476
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 6

    .prologue
    .line 538
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 539
    new-instance v1, Lcom/a/a/c;

    iget-object v2, p0, Lcom/a/a/z;->o:Lb/a/a/a/a/b/z;

    invoke-direct {v1, v2}, Lcom/a/a/c;-><init>(Lb/a/a/a/a/b/z;)V

    invoke-virtual {v1}, Lcom/a/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening an new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0, v1, v0}, Lcom/a/a/z;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 545
    invoke-direct {p0, v1}, Lcom/a/a/z;->c(Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, v1}, Lcom/a/a/z;->d(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0, v1}, Lcom/a/a/z;->e(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private l()V
    .locals 10

    .prologue
    .line 554
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(I)V

    .line 556
    invoke-direct {p0}, Lcom/a/a/z;->j()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_2

    .line 561
    invoke-direct {p0, v0}, Lcom/a/a/z;->f(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->y()Lb/a/a/a/a/g/p;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_0

    .line 566
    iget v1, v0, Lb/a/a/a/a/g/p;->c:I

    .line 568
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Closing all open sessions."

    invoke-interface {v0, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/a/a/z;->e()[Ljava/io/File;

    move-result-object v2

    .line 571
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 572
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 573
    invoke-direct {p0, v4}, Lcom/a/a/z;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v6

    const-string v7, "Fabric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Closing session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, v4, v5, v1}, Lcom/a/a/z;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_1
    :goto_1
    return-void

    .line 586
    :cond_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No open sessions exist."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private m()[Ljava/io/File;
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/a/a/z;->a:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 760
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->u()Ljava/io/File;

    move-result-object v0

    const-string v2, "invalidClsFiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 767
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 773
    :cond_1
    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    .line 1177
    invoke-direct {p0}, Lcom/a/a/z;->m()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1181
    iget-object v4, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v5, Lcom/a/a/af;

    invoke-direct {v5, p0, v3}, Lcom/a/a/af;-><init>(Lcom/a/a/z;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lcom/a/a/t;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v2, Lcom/a/a/am;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/a/a/am;-><init>(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/a/a/t;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 372
    return-void
.end method

.method a([Ljava/io/File;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 729
    invoke-direct {p0}, Lcom/a/a/z;->n()V

    .line 734
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 735
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found invalid session part file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 738
    new-instance v4, Lcom/a/a/ae;

    invoke-direct {v4, p0, v0}, Lcom/a/a/ae;-><init>(Lcom/a/a/z;Ljava/lang/String;)V

    .line 745
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting all part files for invalid session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, v4}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 748
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v7

    const-string v8, "Fabric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting session file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 734
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 752
    :cond_1
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/ab;

    invoke-direct {v1, p0}, Lcom/a/a/ab;-><init>(Lcom/a/a/z;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 461
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/a/a/z;->e()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/ac;

    invoke-direct {v1, p0}, Lcom/a/a/ac;-><init>(Lcom/a/a/z;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method e()[Ljava/io/File;
    .locals 2

    .prologue
    .line 632
    new-instance v0, Lcom/a/a/ao;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/a/a/ao;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/a/a/z;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, Lcom/a/a/z;->j:Ljava/io/File;

    sget-object v1, Lcom/a/a/z;->a:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/a/a/z;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/bq;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 677
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v1, Lcom/a/a/ad;

    invoke-direct {v1, p0}, Lcom/a/a/ad;-><init>(Lcom/a/a/z;)V

    invoke-virtual {v0, v1}, Lcom/a/a/t;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 721
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/a/a/z;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Unregistering power receivers."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/a/a/z;->q:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/a/a/z;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    iget-object v1, p0, Lcom/a/a/z;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/a/a/z;->n:Lcom/a/a/t;

    new-instance v2, Lcom/a/a/al;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/a/a/al;-><init>(Lcom/a/a/z;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/a/a/t;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :try_start_2
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/a/a/z;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    :try_start_4
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/a/a/z;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 285
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics completed exception processing. Invoking default exception handler."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/a/a/z;->i:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 289
    iget-object v1, p0, Lcom/a/a/z;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
