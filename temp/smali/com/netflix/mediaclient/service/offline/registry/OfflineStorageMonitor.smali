.class public Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;
.super Ljava/lang/Object;
.source "OfflineStorageMonitor.java"


# static fields
.field private static final STORAGE_MOUNT_DELAY_MS:J

.field private static final STORAGE_UN_MOUNT_DELAY_MS:J

.field private static final TAG:Ljava/lang/String; = "offlineStorageMonitor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtStorageMountReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBroadcastReceiverRegistered:Z

.field private mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

.field private final mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

.field private final mStorageInfoUpdater:Ljava/lang/Runnable;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->STORAGE_MOUNT_DELAY_MS:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->STORAGE_UN_MOUNT_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;)V
    .locals 6

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$1;-><init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mStorageInfoUpdater:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$2;-><init>(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mExtStorageMountReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mWorkHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/util/RateLimiter;

    const/4 v1, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/RateLimiter;-><init>(IJ)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->sendStorageAddedOrRemoved()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Lcom/netflix/mediaclient/util/RateLimiter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mRateLimiter:Lcom/netflix/mediaclient/util/RateLimiter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mStorageInfoUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->STORAGE_UN_MOUNT_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 33
    sget-wide v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->STORAGE_MOUNT_DELAY_MS:J

    return-wide v0
.end method

.method private static passesNfWriteTest(Ljava/io/File;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 211
    .line 212
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "nf.test"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 217
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest first deleteResult=%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 218
    if-nez v0, :cond_0

    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 223
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest createNewFile=%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 225
    :try_start_1
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest file exists=%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 226
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 227
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest delete=%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    :goto_1
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest IOException "

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v1

    .line 231
    :goto_2
    const-string/jumbo v3, "offlineStorageMonitor"

    const-string/jumbo v4, "passesNfWriteTest Exception "

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 230
    :catch_2
    move-exception v2

    goto :goto_2

    .line 228
    :catch_3
    move-exception v0

    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mIsBroadcastReceiverRegistered:Z

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mExtStorageMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    return-void
.end method

.method private sendStorageAddedOrRemoved()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mStorageChangeListener:Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor$StorageChangeListener;->onStorageAddedOrRemoved()V

    .line 208
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mIsBroadcastReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mExtStorageMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mIsBroadcastReceiverRegistered:Z

    .line 187
    return-void
.end method


# virtual methods
.method public buildOfflineStorageVolumeInfoList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 139
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "buildOfflineStorageVolumeInfoList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    .line 142
    if-eqz v10, :cond_5

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    move v6, v7

    .line 144
    :goto_0
    array-length v0, v10

    if-ge v6, v0, :cond_5

    .line 145
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "\n i=%d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    aget-object v3, v10, v6

    .line 147
    if-nez v3, :cond_0

    .line 148
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "downloadDir null, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 153
    const-string/jumbo v1, "offlineStorageMonitor"

    const-string/jumbo v4, "mkdirsResult=%b"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "downloadDir still doesn\'t exist, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->getStatFsForExternalStorageDir(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v4

    .line 160
    if-nez v4, :cond_2

    .line 161
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "statFs null, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->passesNfWriteTest(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    const-string/jumbo v0, "offlineStorageMonitor"

    const-string/jumbo v1, "downloadDir not writable, ignore"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 170
    :cond_3
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->mContext:Landroid/content/Context;

    if-nez v6, :cond_4

    move v5, v8

    :goto_2
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageVolumeInfo;-><init>(Landroid/content/Context;Landroid/os/storage/StorageManager;Ljava/io/File;Landroid/os/StatFs;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v5, v7

    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string/jumbo v1, "offlineStorageMonitor"

    const-string/jumbo v3, "OfflineStorageVolumeInfo constructor returned "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v1, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 178
    :cond_5
    return-object v9
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->unregisterReceiver()V

    .line 119
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/offline/registry/OfflineStorageMonitor;->registerReceiver()V

    .line 114
    return-void
.end method
