.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
.super Ljava/lang/Enum;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum Deleted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field public static final enum Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "Creating"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "InProgress"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "Stopped"

    invoke-direct {v0, v1, v7, v7}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "Complete"

    invoke-direct {v0, v1, v8, v8}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "Deleted"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Deleted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "DeleteComplete"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    const-string/jumbo v1, "CreateFailed"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Deleted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->DeleteComplete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->mValue:I

    .line 24
    return-void
.end method

.method public static getStateByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->mValue:I

    return v0
.end method
