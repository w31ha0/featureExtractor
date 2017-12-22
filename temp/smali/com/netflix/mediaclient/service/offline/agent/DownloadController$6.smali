.class synthetic Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;
.super Ljava/lang/Object;
.source "DownloadController.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 652
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadController$6;->$SwitchMap$com$netflix$mediaclient$service$job$NetflixJob$NetflixJobId:[I

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
