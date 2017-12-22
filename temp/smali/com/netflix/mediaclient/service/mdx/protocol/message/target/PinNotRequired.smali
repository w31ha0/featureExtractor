.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "PinNotRequired.java"


# static fields
.field private static PROPERTY_isPinVerified:Ljava/lang/String;


# instance fields
.field private isPinVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "isPinVerified"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->PROPERTY_isPinVerified:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "PIN_VERIFICATION_NOT_REQUIRED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->PROPERTY_isPinVerified:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->isPinVerified:Z

    .line 12
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->appBodyJson:Lorg/json/JSONObject;

    .line 13
    return-void
.end method


# virtual methods
.method public getIsPinVerified()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinNotRequired;->isPinVerified:Z

    return v0
.end method
