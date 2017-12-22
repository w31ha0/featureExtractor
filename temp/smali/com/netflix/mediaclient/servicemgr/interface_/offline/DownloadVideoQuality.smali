.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
.super Ljava/lang/Enum;
.source "DownloadVideoQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

.field public static final enum BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

.field public static final enum DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    const-string/jumbo v1, "DEFAULT"

    const-string/jumbo v2, "DEFAULT"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    const-string/jumbo v1, "BEST"

    const-string/jumbo v2, "BEST"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->value:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 5

    .prologue
    .line 14
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 15
    iget-object v4, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    :goto_1
    return-object v0

    .line 14
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->value:Ljava/lang/String;

    return-object v0
.end method
