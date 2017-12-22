.class Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;
.super Ljava/lang/Object;
.source "CdnUrlDownloadEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_cdnUrlDownloadEvent"


# instance fields
.field private final mCommonLogBlobData:Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

.field private mContext:Landroid/content/Context;

.field private mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

.field private mDlStartBytes:J

.field private mDlStartTime:J

.field private final mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCommonLogBlobData:Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    .line 46
    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;)Lcom/netflix/mediaclient/servicemgr/LogblobLogging;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mLogblobLogging:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    return-object v0
.end method

.method private sendDlReportLogBlob(JZ)V
    .locals 15

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartTime:J

    sub-long v10, v2, v4

    .line 102
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartBytes:J

    sub-long v12, p1, v2

    .line 104
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_0

    .line 105
    new-instance v3, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;

    move/from16 v0, p3

    invoke-direct {v3, p0, v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;-><init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;Z)V

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCommonLogBlobData:Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartTime:J

    iget-wide v8, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartBytes:J

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {v2}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v14

    .line 107
    invoke-virtual/range {v3 .. v14}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;->populateJson(Lcom/netflix/mediaclient/service/offline/download/CommonCdnLogBlobData;Lcom/netflix/mediaclient/service/offline/download/CdnUrl;JJJJLcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 114
    new-instance v2, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v4, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;

    invoke-direct {v4, p0, v3}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$1;-><init>(Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver$CdnDownloadLogBlob;)V

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v2

    .line 121
    const-string/jumbo v3, "nf_cdnUrlDownloadEvent"

    const-string/jumbo v4, "onDownloadComplete jsonException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 122
    :catch_1
    move-exception v2

    .line 123
    const-string/jumbo v3, "nf_cdnUrlDownloadEvent"

    const-string/jumbo v4, "onDownloadComplete exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 126
    :cond_0
    const-string/jumbo v2, "nf_cdnUrlDownloadEvent"

    const-string/jumbo v3, "onDownloadComplete not sending dl report."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method onDownloadComplete(J)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "nf_cdnUrlDownloadEvent"

    const-string/jumbo v1, "onDownloadComplete  didn\'t receive onDownloadStart. Not an error, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->sendDlReportLogBlob(JZ)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    goto :goto_0
.end method

.method onDownloadStart(Lcom/netflix/mediaclient/service/offline/download/CdnUrl;J)V
    .locals 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartTime:J

    .line 61
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mDlStartBytes:J

    .line 62
    return-void
.end method

.method onDownloadStop(J)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "nf_cdnUrlDownloadEvent"

    const-string/jumbo v1, "onDownloadStop  didn\'t receive onDownloadStart. Not an error, ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->sendDlReportLogBlob(JZ)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrlDownloadEventReceiver;->mCurrentCdnUrl:Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    goto :goto_0
.end method
