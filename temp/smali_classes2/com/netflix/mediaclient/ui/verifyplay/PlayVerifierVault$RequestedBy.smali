.class public final enum Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
.super Ljava/lang/Enum;
.source "PlayVerifierVault.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const-string/jumbo v1, "MDX"

    const-string/jumbo v2, "mdx"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const-string/jumbo v1, "PLAYER"

    const-string/jumbo v2, "player"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const-string/jumbo v1, "PLAY_LAUNCHER"

    const-string/jumbo v2, "launcher"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const-string/jumbo v1, "OFFLINE_DOWNLOAD"

    const-string/jumbo v2, "offline_download"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->UNKNOWN:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->MDX:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAYER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->PLAY_LAUNCHER:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->OFFLINE_DOWNLOAD:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->UNKNOWN:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->$VALUES:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->value:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
    .locals 5

    .prologue
    .line 159
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->values()[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 160
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    :goto_1
    return-object v0

    .line 159
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->UNKNOWN:Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->$VALUES:[Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PlayVerifierVault$RequestedBy;->value:Ljava/lang/String;

    return-object v0
.end method
