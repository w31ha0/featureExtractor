.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
.super Ljava/lang/Object;
.source "VoipCallConfigData.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private attributes:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation
.end field

.field private tokenExpirationTS:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokenExpirationTS"
    .end annotation
.end field

.field private userToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userToken"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "nf_log"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->tokenExpirationTS:J

    return-void
.end method


# virtual methods
.method public getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->attributes:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    return-object v0
.end method

.method public getTokenExpirationTS()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->tokenExpirationTS:J

    return-wide v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->userToken:Ljava/lang/String;

    return-object v0
.end method
