.class public final enum Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
.super Ljava/lang/Enum;
.source "ErrorSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field public static final enum msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field public static final enum offline_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

.field public static final enum streaming_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string/jumbo v1, "msl"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string/jumbo v1, "streaming_playback"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->streaming_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    const-string/jumbo v1, "offline_playback"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->offline_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->msl:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->streaming_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->offline_playback:Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->$VALUES:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->$VALUES:[Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/error/crypto/ErrorSource;

    return-object v0
.end method
