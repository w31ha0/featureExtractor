.class public Lc/FileUtils;
.super Lvpadn/r;
.source "FileUtils.java"


# static fields
.field public static ABORT_ERR:I

.field public static APPLICATION:I

.field public static ENCODING_ERR:I

.field public static INVALID_MODIFICATION_ERR:I

.field public static INVALID_STATE_ERR:I

.field public static NOT_FOUND_ERR:I

.field public static NOT_READABLE_ERR:I

.field public static NO_MODIFICATION_ALLOWED_ERR:I

.field public static PATH_EXISTS_ERR:I

.field public static PERSISTENT:I

.field public static QUOTA_EXCEEDED_ERR:I

.field public static RESOURCE:I

.field public static SECURITY_ERR:I

.field public static SYNTAX_ERR:I

.field public static TEMPORARY:I

.field public static TYPE_MISMATCH_ERR:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 73
    sput v1, Lc/FileUtils;->NOT_FOUND_ERR:I

    .line 74
    sput v2, Lc/FileUtils;->SECURITY_ERR:I

    .line 75
    sput v3, Lc/FileUtils;->ABORT_ERR:I

    .line 77
    const/4 v0, 0x4

    sput v0, Lc/FileUtils;->NOT_READABLE_ERR:I

    .line 78
    const/4 v0, 0x5

    sput v0, Lc/FileUtils;->ENCODING_ERR:I

    .line 79
    const/4 v0, 0x6

    sput v0, Lc/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 80
    const/4 v0, 0x7

    sput v0, Lc/FileUtils;->INVALID_STATE_ERR:I

    .line 81
    const/16 v0, 0x8

    sput v0, Lc/FileUtils;->SYNTAX_ERR:I

    .line 82
    const/16 v0, 0x9

    sput v0, Lc/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 83
    const/16 v0, 0xa

    sput v0, Lc/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 84
    const/16 v0, 0xb

    sput v0, Lc/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 85
    const/16 v0, 0xc

    sput v0, Lc/FileUtils;->PATH_EXISTS_ERR:I

    .line 87
    const/4 v0, 0x0

    sput v0, Lc/FileUtils;->TEMPORARY:I

    .line 88
    sput v1, Lc/FileUtils;->PERSISTENT:I

    .line 89
    sput v2, Lc/FileUtils;->RESOURCE:I

    .line 90
    sput v3, Lc/FileUtils;->APPLICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 99
    return-void
.end method

.method private a(Ljava/lang/String;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lvpadn/aa;
        }
    .end annotation

    .prologue
    .line 1110
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    new-instance v0, Lvpadn/aa;

    const-string v1, "Couldn\'t truncate file given its content URI"

    invoke-direct {v0, v1}, Lvpadn/aa;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-ltz v0, :cond_1

    .line 1119
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1120
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1124
    :goto_0
    return-wide p2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    .line 1126
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 424
    .line 427
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    const/4 p1, 0x0

    .line 431
    :cond_1
    if-eqz p1, :cond_2

    .line 432
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    :goto_0
    return-object v0

    .line 434
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 884
    sget v1, Lc/FileUtils;->TEMPORARY:I

    if-ne p1, v1, :cond_1

    .line 886
    const-string v1, "name"

    const-string v2, "temporary"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 888
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    .line 889
    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 892
    const-string v1, "root"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    .line 893
    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-direct {p0, v2}, Lc/FileUtils;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    :goto_0
    return-object v0

    .line 895
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 898
    const-string v1, "root"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/FileUtils;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 901
    :cond_1
    sget v1, Lc/FileUtils;->PERSISTENT:I

    if-ne p1, v1, :cond_3

    .line 902
    const-string v1, "name"

    const-string v2, "persistent"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 903
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 904
    const-string v1, "root"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 906
    :cond_2
    const-string v1, "root"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/FileUtils;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 910
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No filesystem of type requested"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lvpadn/z;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    invoke-direct {p0, p1, p2}, Lc/FileUtils;->b(Ljava/io/File;Ljava/io/File;)V

    .line 457
    invoke-virtual {p0, p2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lvpadn/aa;,
            Ljava/io/IOException;,
            Lvpadn/z;,
            Lvpadn/x;,
            Lvpadn/y;
        }
    .end annotation

    .prologue
    .line 361
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v1, v2}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v1

    .line 365
    if-eqz p3, :cond_0

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    new-instance v0, Lvpadn/x;

    const-string v1, "Bad file name"

    invoke-direct {v0, v1}, Lvpadn/x;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "The source does not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "The source does not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_2
    invoke-direct {p0, p3, v2, v0}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t copy a file onto itself"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    if-eqz p4, :cond_5

    .line 395
    invoke-direct {p0, v2, v0}, Lc/FileUtils;->e(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 410
    :cond_4
    :goto_0
    return-object v0

    .line 397
    :cond_5
    invoke-direct {p0, v2, v0}, Lc/FileUtils;->c(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_6
    if-eqz p4, :cond_7

    .line 401
    invoke-direct {p0, v2, v0}, Lc/FileUtils;->d(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 404
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 405
    invoke-direct {p0, p1}, Lc/FileUtils;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_7
    invoke-direct {p0, v2, v0}, Lc/FileUtils;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvpadn/y;,
            Ljava/io/IOException;,
            Lvpadn/ab;,
            Lvpadn/x;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 704
    .line 706
    if-eqz p3, :cond_8

    .line 707
    const-string v1, "create"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 708
    if-eqz v1, :cond_0

    .line 709
    const-string v0, "exclusive"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 714
    :cond_0
    :goto_0
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    new-instance v0, Lvpadn/x;

    const-string v1, "This file has a : in it\'s name"

    invoke-direct {v0, v1}, Lvpadn/x;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    invoke-direct {p0, p1, p2}, Lc/FileUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 720
    if-eqz v1, :cond_4

    .line 721
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    new-instance v0, Lvpadn/y;

    const-string v1, "create/exclusive fails"

    invoke-direct {v0, v1}, Lvpadn/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    if-eqz p4, :cond_3

    .line 725
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 729
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 730
    new-instance v0, Lvpadn/y;

    const-string v1, "create fails"

    invoke-direct {v0, v1}, Lvpadn/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 734
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 735
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "path does not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_5
    if-eqz p4, :cond_6

    .line 738
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 739
    new-instance v0, Lvpadn/ab;

    const-string v1, "path doesn\'t exist or is file"

    invoke-direct {v0, v1}, Lvpadn/ab;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 743
    new-instance v0, Lvpadn/ab;

    const-string v1, "path doesn\'t exist or is directory"

    invoke-direct {v0, v1}, Lvpadn/ab;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_7
    invoke-virtual {p0, v2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 254
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvpadn/y;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 653
    invoke-direct {p0, v3}, Lc/FileUtils;->a(Ljava/io/File;)Z

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    new-instance v0, Lvpadn/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lvpadn/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 536
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 761
    .line 762
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    :goto_0
    return-object v0

    .line 765
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v1

    .line 766
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 278
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v0, "content:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    new-instance v0, Ljava/io/File;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 307
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 292
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v0, "file://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 296
    if-gez v2, :cond_1

    .line 297
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 312
    :cond_4
    invoke-virtual {p0, v0}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 466
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 467
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 468
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 471
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 474
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 475
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 476
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 478
    return-void

    .line 473
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 474
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 475
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 476
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    throw v0
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lc/FileUtils;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 331
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 335
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 336
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_2
    return-object v1
.end method

.method private c(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lvpadn/aa;,
            Lvpadn/z;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t copy itself into itself"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_2

    .line 506
    new-instance v0, Lvpadn/aa;

    const-string v1, "Couldn\'t create the destination directory"

    invoke-direct {v0, v1}, Lvpadn/aa;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 511
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 512
    invoke-direct {p0, v3, p2}, Lc/FileUtils;->c(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 510
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_3
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, v3, v4}, Lc/FileUtils;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    goto :goto_1

    .line 519
    :cond_4
    invoke-virtual {p0, p2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lvpadn/z;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    invoke-direct {p0, p1, p2}, Lc/FileUtils;->b(Ljava/io/File;Ljava/io/File;)V

    .line 565
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 572
    :cond_1
    invoke-virtual {p0, p2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 568
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "moved failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvpadn/y;
        }
    .end annotation

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lc/FileUtils;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 636
    invoke-direct {p0, p1}, Lc/FileUtils;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 640
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lc/FileUtils;->a(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private e(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lvpadn/z;,
            Lvpadn/aa;,
            Lvpadn/y;
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t rename a file to a directory"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    new-instance v0, Lvpadn/z;

    const-string v1, "Can\'t move itself into itself"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 601
    new-instance v0, Lvpadn/z;

    const-string v1, "directory is not empty"

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 611
    invoke-direct {p0, p1, p2}, Lc/FileUtils;->c(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONObject;

    .line 612
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    invoke-direct {p0, p1}, Lc/FileUtils;->a(Ljava/io/File;)Z

    .line 619
    :cond_3
    invoke-virtual {p0, p2}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 615
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "moved failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvpadn/aa;,
            Lvpadn/z;
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lc/FileUtils;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 677
    invoke-direct {p0, p1}, Lc/FileUtils;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    new-instance v0, Lvpadn/aa;

    const-string v1, "You can\'t delete the root directory"

    invoke-direct {v0, v1}, Lvpadn/aa;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 683
    new-instance v0, Lvpadn/z;

    const-string v1, "You can\'t delete a directory that is not empty."

    invoke-direct {v0, v1}, Lvpadn/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-direct {p0, v0}, Lc/FileUtils;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    invoke-direct {p0, v0}, Lc/FileUtils;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->k(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 796
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    .line 800
    invoke-interface {v2}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    const/4 v0, 0x1

    .line 803
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1048
    if-eqz p0, :cond_1

    .line 1053
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 1055
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3ga"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    const-string v0, "audio/3gpp"

    .line 1062
    :goto_0
    return-object v0

    .line 1059
    :cond_0
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1062
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected static getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1157
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1159
    if-nez v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    :goto_0
    return-object v0

    .line 1161
    :cond_0
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1163
    invoke-interface {p1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1164
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1167
    :cond_1
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1170
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 826
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v0

    .line 828
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    return-object v1
.end method

.method private i(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-direct {p0, p1}, Lc/FileUtils;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to find file in getMetadata"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method private j(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lc/FileUtils;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 865
    const-string v2, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 866
    const-string v2, "type"

    invoke-static {p1}, Lc/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string v2, "name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 868
    const-string v2, "fullPath"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 869
    const-string v2, "lastModifiedDate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 871
    return-object v1
.end method

.method private k(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 944
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private l(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1138
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1144
    :goto_0
    return-object v0

    .line 1143
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v1}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 816
    :cond_0
    return-object p0
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
    const v2, 0x7fffffff

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    :try_start_0
    const-string v3, "testSaveLocationExists"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-static {}, Lvpadn/h;->a()Z

    move-result v0

    .line 113
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Z)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V

    :goto_0
    move v0, v1

    .line 245
    :cond_0
    return v0

    .line 115
    :cond_1
    const-string v3, "getFreeDiskSpace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Lvpadn/h;->a(Z)J

    move-result-wide v2

    .line 117
    new-instance v0, Lvpadn/w;

    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    long-to-float v2, v2

    invoke-direct {v0, v4, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;F)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lvpadn/y; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lvpadn/aa; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lvpadn/z; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lvpadn/x; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lvpadn/ab; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    sget v0, Lc/FileUtils;->NOT_FOUND_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto :goto_0

    .line 119
    :cond_2
    :try_start_1
    const-string v3, "testFileExists"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvpadn/h;->a(Ljava/lang/String;)Z

    move-result v0

    .line 121
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Z)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lvpadn/y; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lvpadn/aa; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lvpadn/z; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lvpadn/x; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lvpadn/ab; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    sget v0, Lc/FileUtils;->PATH_EXISTS_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto :goto_0

    .line 123
    :cond_3
    :try_start_2
    const-string v3, "testDirectoryExists"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvpadn/h;->a(Ljava/lang/String;)Z

    move-result v0

    .line 125
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Z)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lvpadn/y; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lvpadn/aa; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lvpadn/z; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lvpadn/x; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lvpadn/ab; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 232
    :catch_2
    move-exception v0

    .line 233
    sget v0, Lc/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto :goto_0

    .line 127
    :cond_4
    :try_start_3
    const-string v3, "readAsText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v5, :cond_5

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 133
    :cond_5
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    .line 134
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 137
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0, v2}, Lc/FileUtils;->readAsText(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lvpadn/y; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lvpadn/aa; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lvpadn/z; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lvpadn/x; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lvpadn/ab; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_0

    .line 234
    :catch_3
    move-exception v0

    .line 235
    sget v0, Lc/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 140
    :cond_7
    :try_start_4
    const-string v3, "readAsDataURL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 143
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, v4, :cond_1a

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    move v3, v0

    .line 146
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v5, :cond_19

    .line 147
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 150
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v0}, Lc/FileUtils;->readAsDataURL(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v2, v3, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lvpadn/y; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lvpadn/aa; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lvpadn/z; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lvpadn/x; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lvpadn/ab; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_0

    .line 236
    :catch_4
    move-exception v0

    .line 237
    sget v0, Lc/FileUtils;->ENCODING_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 153
    :cond_8
    :try_start_5
    const-string v2, "write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lc/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    .line 155
    new-instance v0, Lvpadn/w;

    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    long-to-float v2, v2

    invoke-direct {v0, v4, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;F)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lvpadn/y; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lvpadn/aa; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lvpadn/z; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lvpadn/x; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lvpadn/ab; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    .line 238
    :catch_5
    move-exception v0

    .line 239
    sget v0, Lc/FileUtils;->INVALID_MODIFICATION_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 157
    :cond_9
    :try_start_6
    const-string v2, "truncate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lc/FileUtils;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 159
    new-instance v0, Lvpadn/w;

    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    long-to-float v2, v2

    invoke-direct {v0, v4, v2}, Lvpadn/w;-><init>(Lvpadn/w$a;F)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lvpadn/y; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lvpadn/aa; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lvpadn/z; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lvpadn/x; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lvpadn/ab; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 240
    :catch_6
    move-exception v0

    .line 241
    sget v0, Lc/FileUtils;->ENCODING_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 161
    :cond_a
    :try_start_7
    const-string v2, "requestFileSystem"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    .line 163
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-static {v0}, Lvpadn/h;->a(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    .line 164
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    sget v3, Lc/FileUtils;->QUOTA_EXCEEDED_ERR:I

    invoke-direct {v0, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;I)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lvpadn/y; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lvpadn/aa; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lvpadn/z; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lvpadn/x; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lvpadn/ab; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 242
    :catch_7
    move-exception v0

    .line 243
    sget v0, Lc/FileUtils;->TYPE_MISMATCH_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 166
    :cond_b
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lc/FileUtils;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 170
    :cond_c
    const-string v2, "resolveLocalFileSystemURI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 172
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 174
    :cond_d
    const-string v2, "getMetadata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 175
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->b:Lvpadn/w$a;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/FileUtils;->i(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v3, v4

    invoke-direct {v0, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;F)V

    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    goto/16 :goto_0

    .line 177
    :cond_e
    const-string v2, "getFileMetadata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->j(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 181
    :cond_f
    const-string v2, "getParent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->f(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 185
    :cond_10
    const-string v2, "getDirectory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 187
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 189
    :cond_11
    const-string v2, "getFile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 193
    :cond_12
    const-string v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->e(Ljava/lang/String;)Z

    move-result v0

    .line 198
    if-eqz v0, :cond_13

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->a(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 202
    :cond_13
    sget v0, Lc/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 205
    :cond_14
    const-string v2, "removeRecursively"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->d(Ljava/lang/String;)Z

    move-result v0

    .line 207
    if-eqz v0, :cond_15

    .line 208
    invoke-virtual {p3}, Lvpadn/p;->c()V

    goto/16 :goto_0

    .line 210
    :cond_15
    sget v0, Lc/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual {p3, v0}, Lvpadn/p;->a(I)V

    goto/16 :goto_0

    .line 213
    :cond_16
    const-string v2, "moveTo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 217
    :cond_17
    const-string v2, "copyTo"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lc/FileUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 219
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 221
    :cond_18
    const-string v2, "readEntries"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/FileUtils;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 223
    invoke-virtual {p3, v0}, Lvpadn/p;->a(Lorg/json/JSONArray;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lvpadn/y; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lvpadn/aa; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lvpadn/z; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lvpadn/x; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lvpadn/ab; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_2

    :cond_1a
    move v3, v0

    goto/16 :goto_1
.end method

.method public getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 924
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 926
    const-string v1, "isFile"

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 927
    const-string v1, "isDirectory"

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 928
    const-string v1, "name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 929
    const-string v1, "fullPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    return-object v0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 954
    const-string v1, "testSaveLocationExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    :cond_0
    :goto_0
    return v0

    .line 957
    :cond_1
    const-string v1, "getFreeDiskSpace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    const-string v1, "testFileExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    const-string v1, "testDirectoryExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAsDataURL(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 1011
    sub-int v0, p3, p2

    .line 1012
    new-array v1, v7, [B

    .line 1013
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lc/FileUtils;->l(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1014
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1017
    if-lez p2, :cond_0

    .line 1018
    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1021
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v1, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1022
    sub-int/2addr v0, v4

    .line 1023
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1028
    :cond_1
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1029
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1030
    iget-object v1, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lvpadn/bc;->a([BZ)[B

    move-result-object v1

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";base64,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1038
    return-object v0

    .line 1033
    :cond_2
    invoke-static {p1}, Lc/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public readAsText(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 985
    sub-int v0, p4, p3

    .line 986
    new-array v1, v7, [B

    .line 987
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lc/FileUtils;->l(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 988
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 991
    if-lez p3, :cond_0

    .line 992
    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 995
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v1, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 996
    sub-int/2addr v0, v4

    .line 997
    invoke-virtual {v3, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1000
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lvpadn/aa;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1077
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    new-instance v0, Lvpadn/aa;

    const-string v1, "Couldn\'t write to file given its content URI"

    invoke-direct {v0, v1}, Lvpadn/aa;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lc/FileUtils;->cordova:Lvpadn/q;

    invoke-static {v0, v2}, Lc/FileUtils;->getRealPathFromURI(Landroid/net/Uri;Lvpadn/q;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    if-lez p3, :cond_1

    .line 1085
    int-to-long v4, p3

    invoke-direct {p0, v2, v4, v5}, Lc/FileUtils;->a(Ljava/lang/String;J)J

    .line 1086
    const/4 v0, 0x1

    .line 1089
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1090
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1091
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1092
    array-length v0, v3

    new-array v0, v0, [B

    .line 1093
    array-length v2, v0

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1094
    array-length v2, v3

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1095
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1096
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1098
    array-length v0, v3

    int-to-long v0, v0

    return-wide v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
