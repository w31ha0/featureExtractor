.class public Lc/FileTransfer;
.super Lvpadn/r;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/FileTransfer$a;,
        Lc/FileTransfer$b;
    }
.end annotation


# static fields
.field public static ABORTED_ERR:I

.field public static CONNECTION_ERR:I

.field public static FILE_NOT_FOUND_ERR:I

.field public static INVALID_URL_ERR:I

.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc/FileTransfer$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljavax/net/ssl/HostnameVerifier;

.field private static final c:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 70
    sput v1, Lc/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 71
    const/4 v0, 0x2

    sput v0, Lc/FileTransfer;->INVALID_URL_ERR:I

    .line 72
    const/4 v0, 0x3

    sput v0, Lc/FileTransfer;->CONNECTION_ERR:I

    .line 73
    const/4 v0, 0x4

    sput v0, Lc/FileTransfer;->ABORTED_ERR:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/FileTransfer;->a:Ljava/util/HashMap;

    .line 488
    new-instance v0, Lc/FileTransfer$2;

    invoke-direct {v0}, Lc/FileTransfer$2;-><init>()V

    sput-object v0, Lc/FileTransfer;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 494
    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lc/FileTransfer$3;

    invoke-direct {v2}, Lc/FileTransfer$3;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lc/FileTransfer;->c:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/FileTransfer;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lc/FileTransfer;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 776
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lc/FileTransfer;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 789
    :goto_0
    return-object v0

    .line 780
    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 782
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 783
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Lc/FileTransfer;->b(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 577
    .line 578
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 579
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method static synthetic a()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lc/FileTransfer;->b:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic a(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lc/FileTransfer;->b(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 556
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :try_start_1
    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v1, "target"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    if-eqz p3, :cond_0

    .line 561
    const-string v1, "http_status"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    :cond_0
    :goto_0
    return-object v0

    .line 563
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 564
    :goto_1
    const-string v2, "FileTransfer"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 563
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0, p1, p2, p3}, Lc/FileTransfer;->b(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0}, Lc/FileTransfer;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v3, 0x2

    const-string v4, "file"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lc/FileTransfer;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    const/4 v3, 0x3

    const-string v4, "image.jpg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lc/FileTransfer;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 178
    const/4 v3, 0x4

    const-string v4, "image/jpeg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lc/FileTransfer;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 179
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 180
    :goto_0
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    .line 182
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 184
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "headers"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 185
    :goto_2
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 187
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trustEveryone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chunkedMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "objectId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 207
    new-instance v5, Lc/FileTransfer$b;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lc/FileTransfer$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V

    .line 208
    sget-object v4, Lc/FileTransfer;->a:Ljava/util/HashMap;

    monitor-enter v4

    .line 209
    :try_start_1
    sget-object v3, Lc/FileTransfer;->a:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lc/FileTransfer;->cordova:Lvpadn/q;

    invoke-interface {v3}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v18

    new-instance v3, Lc/FileTransfer$1;

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move-object/from16 v15, p1

    invoke-direct/range {v3 .. v17}, Lc/FileTransfer$1;-><init>(Lc/FileTransfer;Lc/FileTransfer$b;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 469
    :goto_3
    return-void

    .line 179
    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    goto/16 :goto_0

    .line 182
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 184
    :cond_3
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    goto/16 :goto_2

    .line 199
    :catch_0
    move-exception v3

    .line 200
    sget v4, Lc/FileTransfer;->INVALID_URL_ERR:I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1, v5}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v4

    .line 201
    const-string v5, "FileTransfer"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    new-instance v3, Lvpadn/w;

    sget-object v5, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v3, v5, v4}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_3

    .line 210
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method static synthetic b(Lc/FileTransfer;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lc/FileTransfer;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 801
    const-string v1, "file://"

    .line 803
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 810
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 806
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_1
    return-object v0
.end method

.method private static b(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 482
    new-instance v0, Lc/FileTransfer$a;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/FileTransfer$a;-><init>(Ljava/io/InputStream;)V

    .line 484
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lc/FileTransfer;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private static b(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    .prologue
    .line 518
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 521
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 522
    const/4 v2, 0x0

    sget-object v3, Lc/FileTransfer;->c:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 523
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 524
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-object v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    const-string v2, "FileTransfer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    if-eqz p3, :cond_0

    .line 537
    :try_start_0
    instance-of v1, p3, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 538
    check-cast p3, Ljava/net/HttpURLConnection;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 545
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 540
    :catch_0
    move-exception v1

    .line 541
    const-string v2, "FileTransfer"

    const-string v3, "Error getting HTTP status code from connection."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 472
    if-eqz p0, :cond_0

    .line 474
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 594
    const-string v0, "FileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v5

    .line 597
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 601
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 610
    invoke-static {p1}, Lvpadn/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    const-string v0, "FileTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source URL is not in white list: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget v0, Lc/FileTransfer;->CONNECTION_ERR:I

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v0

    .line 613
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v1, v2, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {p4, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 766
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    sget v1, Lc/FileTransfer;->INVALID_URL_ERR:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v1

    .line 604
    const-string v2, "FileTransfer"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    new-instance v0, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->g:Lvpadn/w$a;

    invoke-direct {v0, v2, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 618
    :cond_0
    new-instance v2, Lc/FileTransfer$b;

    invoke-direct {v2, p1, p2, p4}, Lc/FileTransfer$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V

    .line 619
    sget-object v1, Lc/FileTransfer;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 620
    :try_start_1
    sget-object v0, Lc/FileTransfer;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    iget-object v0, p0, Lc/FileTransfer;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v0, Lc/FileTransfer$4;

    move-object v1, p0

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lc/FileTransfer$4;-><init>(Lc/FileTransfer;Lc/FileTransfer$b;Ljava/lang/String;ZZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 821
    sget-object v1, Lc/FileTransfer;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 822
    :try_start_0
    sget-object v0, Lc/FileTransfer;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/FileTransfer$b;

    .line 823
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    if-eqz v0, :cond_1

    .line 825
    iget-object v1, v0, Lc/FileTransfer$b;->c:Ljava/io/File;

    .line 826
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 830
    :cond_0
    sget v1, Lc/FileTransfer;->ABORTED_ERR:I

    iget-object v2, v0, Lc/FileTransfer$b;->a:Ljava/lang/String;

    iget-object v3, v0, Lc/FileTransfer$b;->b:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lc/FileTransfer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v1

    .line 831
    monitor-enter v0

    .line 832
    :try_start_1
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->j:Lvpadn/w$a;

    invoke-direct {v2, v3, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lc/FileTransfer$b;->a(Lvpadn/w;)V

    .line 833
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/FileTransfer$b;->g:Z

    .line 834
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 836
    iget-object v1, p0, Lc/FileTransfer;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lc/FileTransfer$5;

    invoke-direct {v2, p0, v0}, Lc/FileTransfer$5;-><init>(Lc/FileTransfer;Lc/FileTransfer$b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 845
    :cond_1
    return-void

    .line 823
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 834
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    const-string v2, "upload"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, "upload"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-direct {p0, v1, v2, p2, p3}, Lc/FileTransfer;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    new-instance v1, Lvpadn/w;

    sget-object v2, Lvpadn/w$a;->f:Lvpadn/w$a;

    const-string v3, "UTF-8 error."

    invoke-direct {v1, v2, v3}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lvpadn/p;->a(Lvpadn/w;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-direct {p0, v1, v2, p2, p3}, Lc/FileTransfer;->b(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "abort"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-direct {p0, v1}, Lc/FileTransfer;->c(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p3}, Lvpadn/p;->c()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 156
    goto :goto_0
.end method
