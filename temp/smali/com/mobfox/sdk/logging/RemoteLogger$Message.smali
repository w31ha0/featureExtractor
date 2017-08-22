.class public final enum Lcom/mobfox/sdk/logging/RemoteLogger$Message;
.super Ljava/lang/Enum;
.source "RemoteLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/logging/RemoteLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Message"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobfox/sdk/logging/RemoteLogger$Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum ERROR:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum ERROR_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum LOADED:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum LOADED_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum NO_FILL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum NO_FILL_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum REQUEST:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum REQUEST_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

.field public static final enum SHOWN_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v3}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->NO_FILL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v6}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    .line 30
    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "REQUEST_INTERSTITIAL"

    invoke-direct {v0, v1, v7}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "NO_FILL_INTERSTITIAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->NO_FILL_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "LOADED_INTERSTITIAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "ERROR_INTERSTITIAL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    new-instance v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    const-string v1, "SHOWN_INTERSTITIAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->SHOWN_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    .line 28
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    sget-object v1, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->NO_FILL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->NO_FILL_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->SHOWN_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->$VALUES:[Lcom/mobfox/sdk/logging/RemoteLogger$Message;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobfox/sdk/logging/RemoteLogger$Message;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    return-object v0
.end method

.method public static values()[Lcom/mobfox/sdk/logging/RemoteLogger$Message;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->$VALUES:[Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v0}, [Lcom/mobfox/sdk/logging/RemoteLogger$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    return-object v0
.end method
