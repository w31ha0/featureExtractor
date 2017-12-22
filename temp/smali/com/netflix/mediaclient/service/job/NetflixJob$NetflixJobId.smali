.class public final enum Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
.super Ljava/lang/Enum;
.source "NetflixJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

.field public static final enum UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-string/jumbo v1, "UNKNOWN_JOB_ID"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-string/jumbo v1, "DOWNLOAD_RESUME"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-string/jumbo v1, "NETFLIX_MAINTENANCE"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    const-string/jumbo v1, "FALKOR_METADATA"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->DOWNLOAD_RESUME:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->NETFLIX_MAINTENANCE:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->FALKOR_METADATA:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->$VALUES:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->mValue:I

    .line 70
    return-void
.end method

.method public static getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 79
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 83
    :goto_1
    return-object v0

    .line 78
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->UNKNOWN_JOB_ID:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->$VALUES:[Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->mValue:I

    return v0
.end method
