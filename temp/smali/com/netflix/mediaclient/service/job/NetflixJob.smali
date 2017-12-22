.class public Lcom/netflix/mediaclient/service/job/NetflixJob;
.super Ljava/lang/Object;
.source "NetflixJob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_netflix_job"


# instance fields
.field private mMinimumDelay:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimumDelay"
    .end annotation
.end field

.field private transient mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field private final mNetflixJobIdValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private final mRepeating:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRepeating"
    .end annotation
.end field

.field private final mRepeatingPeriodInMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "repeatingPeriodMs"
    .end annotation
.end field

.field private final mRequiresCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresCharging"
    .end annotation
.end field

.field private final mRequiresIdle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresIdle"
    .end annotation
.end field

.field private final mRequiresUnmeteredConnection:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requiresUnmeteredNetwork"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 92
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    .line 93
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    .line 94
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    .line 95
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    .line 96
    iput-boolean p6, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    .line 97
    iput-boolean p7, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    .line 98
    return-void
.end method

.method public static buildDownloadResumeJob(Z)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-wide/16 v4, 0x0

    move v2, p0

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method

.method public static buildNetflixMaintenanceJob(J)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const/4 v3, 0x1

    move-wide v4, p0

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method

.method public static buildPrefetchLolomoJob(ZZJZZ)Lcom/netflix/mediaclient/service/job/NetflixJob;
    .locals 8

    .prologue
    .line 118
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/job/NetflixJob;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;ZZJZZ)V

    return-object v0
.end method


# virtual methods
.method public canExecute(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecuteByNetwork(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public canExecuteByNetwork(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    .line 155
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_1

    .line 161
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;->mobile:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    if-eq v2, v3, :cond_2

    :cond_0
    :goto_0
    move v1, v0

    .line 170
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public getMinimumDelay()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    return-wide v0
.end method

.method public getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    if-nez v0, :cond_0

    .line 123
    iget v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobIdValue:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mNetflixJobId:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method

.method public getRepeatingPeriodInMs()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeatingPeriodInMs:J

    return-wide v0
.end method

.method public getRequiresCharging()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresCharging:Z

    return v0
.end method

.method public getRequiresIdle()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresIdle:Z

    return v0
.end method

.method public isRepeating()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    return v0
.end method

.method public isRequiresUnmeteredConnection()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRequiresUnmeteredConnection:Z

    return v0
.end method

.method public setMinimumDelay(J)V
    .locals 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mRepeating:Z

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "nf_netflix_job"

    const-string/jumbo v1, "Error, setting minimum delay on a repeating job."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJob;->mMinimumDelay:J

    goto :goto_0
.end method
