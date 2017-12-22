.class public Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerSelector;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_job_scheduler_select"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNetflixJobScheduler(Landroid/content/Context;)Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;
    .locals 3

    .prologue
    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;-><init>(Landroid/content/Context;)V

    .line 41
    :goto_1
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAllJobs(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method
