.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
.super Ljava/lang/Enum;
.source "ClientActionFromLase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum DELETE_CONTENT_ON_REVOCATION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

.field public static final enum NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;


# instance fields
.field private final mAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "NO_ACTION"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "ACQUIRE_NEW_LICENSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "DELETE_LICENSES"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "MARK_PLAYABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    const-string/jumbo v1, "DELETE_CONTENT_ON_REVOCATION"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_CONTENT_ON_REVOCATION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_CONTENT_ON_REVOCATION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    .line 27
    return-void
.end method

.method public static create(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 55
    iget v4, v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    if-ne v4, p0, :cond_0

    .line 59
    :goto_1
    return-object v0

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()Lcom/netflix/mediaclient/StatusCode;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase$1;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OFFLINE_LICENSE_FETCH_NEW:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_ENCODES_DELETE_ON_REVOCATION:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->mAction:I

    return v0
.end method
