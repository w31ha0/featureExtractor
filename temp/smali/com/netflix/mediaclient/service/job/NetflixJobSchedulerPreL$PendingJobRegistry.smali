.class Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerPreL.java"


# instance fields
.field public final mNetflixJobs:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pendingJobs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    return-void
.end method
