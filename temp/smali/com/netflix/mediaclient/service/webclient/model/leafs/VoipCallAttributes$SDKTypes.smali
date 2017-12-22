.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
.super Ljava/lang/Enum;
.source "VoipCallAttributes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

.field public static final enum DIRECT:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DIRECT"
    .end annotation
.end field

.field public static final enum DIRECT_PORTSIP:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DIRECT_PORTSIP"
    .end annotation
.end field

.field public static final enum TWILIO:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TWILIO"
    .end annotation
.end field

.field public static final enum VAIL:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "VAIL"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    const-string/jumbo v1, "VAIL"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->VAIL:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    const-string/jumbo v1, "TWILIO"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->TWILIO:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    const-string/jumbo v1, "DIRECT"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->DIRECT:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    const-string/jumbo v1, "DIRECT_PORTSIP"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->DIRECT_PORTSIP:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->VAIL:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->TWILIO:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->DIRECT:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->DIRECT_PORTSIP:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    return-object v0
.end method
