.class public final enum Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
.super Ljava/lang/Enum;
.source "MdxLogblob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum APPLICATION_STOPPED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum CAST_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum CAST_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum FAIL_TO_CONNECT:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum FAIL_TO_LAUNCH:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum FAIL_TO_SEND_MESSAGE:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum NETFLIX_MDX_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum NETFLIX_MDX_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum PAIRING_FAILED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum SESSION_MDX_TARGET_ERROR:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum START_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

.field public static final enum STOP_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "START_MDX"

    const-string/jumbo v2, "startMdx"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->START_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "STOP_MDX"

    const-string/jumbo v2, "stopMdx"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->STOP_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "FAIL_TO_SEND_MESSAGE"

    const-string/jumbo v2, "failToSendMsg"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_SEND_MESSAGE:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "APPLICATION_STOPPED"

    const-string/jumbo v2, "appStopped"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->APPLICATION_STOPPED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "FAIL_TO_LAUNCH"

    const-string/jumbo v2, "failToLaunch"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_LAUNCH:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "FAIL_TO_CONNECT"

    const/4 v2, 0x5

    const-string/jumbo v3, "failToConnect"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_CONNECT:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "NETFLIX_MDX_DEVICE_FOUND"

    const/4 v2, 0x6

    const-string/jumbo v3, "netflixDeviceFound"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->NETFLIX_MDX_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "NETFLIX_MDX_DEVICE_LOST"

    const/4 v2, 0x7

    const-string/jumbo v3, "netflixDeviceLost"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->NETFLIX_MDX_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "CAST_DEVICE_FOUND"

    const/16 v2, 0x8

    const-string/jumbo v3, "castDeviceFound"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->CAST_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "CAST_DEVICE_LOST"

    const/16 v2, 0x9

    const-string/jumbo v3, "castDeviceLost"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->CAST_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "PAIRING_FAILED"

    const/16 v2, 0xa

    const-string/jumbo v3, "pairingFailed"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->PAIRING_FAILED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    const-string/jumbo v1, "SESSION_MDX_TARGET_ERROR"

    const/16 v2, 0xb

    const-string/jumbo v3, "sessionMdxError"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->SESSION_MDX_TARGET_ERROR:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->START_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->STOP_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_SEND_MESSAGE:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->APPLICATION_STOPPED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_LAUNCH:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_CONNECT:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->NETFLIX_MDX_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->NETFLIX_MDX_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->CAST_DEVICE_FOUND:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->CAST_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->PAIRING_FAILED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->SESSION_MDX_TARGET_ERROR:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    return-object v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->mName:Ljava/lang/String;

    return-object v0
.end method
