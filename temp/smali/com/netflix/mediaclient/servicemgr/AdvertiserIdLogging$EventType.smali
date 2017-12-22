.class public final enum Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
.super Ljava/lang/Enum;
.source "AdvertiserIdLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum install:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum sign_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

.field public static final enum sign_up:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const-string/jumbo v1, "install"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->install:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const-string/jumbo v1, "sign_up"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_up:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 74
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const-string/jumbo v1, "sign_in"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    const-string/jumbo v1, "check_in"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->install:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_up:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->check_in:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    return-object v0
.end method
