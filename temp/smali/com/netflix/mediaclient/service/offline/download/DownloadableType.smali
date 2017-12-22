.class public final enum Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
.super Ljava/lang/Enum;
.source "DownloadableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/offline/download/DownloadableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

.field public static final enum Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;


# instance fields
.field private final mExtension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const-string/jumbo v1, "Audio"

    const-string/jumbo v2, "nfa"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const-string/jumbo v1, "Video"

    const-string/jumbo v2, "nfv"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const-string/jumbo v1, "Subtitle"

    const-string/jumbo v2, "nfs"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    const-string/jumbo v1, "TrickPlay"

    const-string/jumbo v2, "nfi"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Audio:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Video:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->Subtitle:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->TrickPlay:Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->$VALUES:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->mExtension:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->$VALUES:[Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/download/DownloadableType;

    return-object v0
.end method


# virtual methods
.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/DownloadableType;->mExtension:Ljava/lang/String;

    return-object v0
.end method
