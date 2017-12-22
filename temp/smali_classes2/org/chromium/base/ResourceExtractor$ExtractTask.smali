.class Lorg/chromium/base/ResourceExtractor$ExtractTask;
.super Landroid/os/AsyncTask;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mCompletionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/chromium/base/ResourceExtractor;


# direct methods
.method private constructor <init>(Lorg/chromium/base/ResourceExtractor;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private doInBackgroundImpl()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v2}, Lorg/chromium/base/ResourceExtractor;->access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    const-string/jumbo v0, "cr.base"

    const-string/jumbo v2, "Unable to create pak resources directory!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :goto_0
    return-void

    .line 75
    :cond_0
    const-string/jumbo v3, "checkPakTimeStamp"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->getApkVersion()J

    move-result-wide v4

    .line 77
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 78
    const-string/jumbo v6, "org.chromium.base.ResourceExtractor.Version"

    invoke-interface {v3, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 79
    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 80
    :goto_1
    const-string/jumbo v6, "checkPakTimeStamp"

    invoke-static {v6}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 82
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)V

    .line 87
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "org.chromium.base.ResourceExtractor.Version"

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    :cond_1
    const-string/jumbo v0, "WalkAssets"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 91
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 93
    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v3}, Lorg/chromium/base/ResourceExtractor;->access$200(Lorg/chromium/base/ResourceExtractor;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 94
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 93
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 79
    goto :goto_1

    .line 100
    :cond_3
    const-string/jumbo v7, "ExtractResource"

    invoke-static {v7}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 104
    :try_start_1
    invoke-direct {p0, v5, v6, v0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    const-string/jumbo v5, "ExtractResource"

    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    .line 114
    :try_start_3
    const-string/jumbo v1, "cr.base"

    const-string/jumbo v2, "Exception unpacking required pak asset: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->this$0:Lorg/chromium/base/ResourceExtractor;

    invoke-static {v0}, Lorg/chromium/base/ResourceExtractor;->access$100(Lorg/chromium/base/ResourceExtractor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    const-string/jumbo v0, "WalkAssets"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_4
    const-string/jumbo v1, "ExtractResource"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    :catchall_1
    move-exception v0

    const-string/jumbo v1, "WalkAssets"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "WalkAssets"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private extractResourceHelper(Ljava/io/InputStream;Ljava/io/File;[B)V
    .locals 5

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 49
    :try_start_1
    const-string/jumbo v0, "cr.base"

    const-string/jumbo v2, "Extracting resource %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    const/4 v0, 0x0

    const/16 v2, 0x4000

    invoke-virtual {p1, p3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    :goto_1
    if-eqz v1, :cond_0

    .line 58
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    .line 57
    :cond_2
    if-eqz v1, :cond_3

    .line 58
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :cond_3
    if-eqz p1, :cond_4

    .line 62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 66
    :cond_4
    return-void

    .line 61
    :catchall_1
    move-exception v0

    if-eqz p1, :cond_5

    .line 62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    .line 61
    :catchall_2
    move-exception v0

    if-eqz p1, :cond_6

    .line 62
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    throw v0

    .line 56
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getApkVersion()J
    .locals 5

    .prologue
    .line 152
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 161
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    return-wide v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onPostExecuteImpl()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor$ExtractTask;->mCompletionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 126
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->doInBackgroundImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ResourceExtractor.ExtractTask.doInBackground"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 144
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->onPostExecuteImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const-string/jumbo v0, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ResourceExtractor.ExtractTask.onPostExecute"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method
