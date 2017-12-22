.class Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerPreL.java"


# instance fields
.field public mLastExecutionTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastExecTime"
    .end annotation
.end field

.field public mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "job"
    .end annotation
.end field

.field public mRequestIssueTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequestIssueTime"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->this$0:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
