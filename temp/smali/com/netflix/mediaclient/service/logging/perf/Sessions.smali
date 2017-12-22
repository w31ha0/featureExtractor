.class public final enum Lcom/netflix/mediaclient/service/logging/perf/Sessions;
.super Ljava/lang/Enum;
.source "Sessions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum CONFIG_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum FALKOR_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOGGING_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOG_IN:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOLOMO_PREFETCH_DESERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum LOLOMO_PREFETCH_SERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum NON_MEMBER_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum NRD_CONTROLLER_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum RESOURCE_FETCHER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

.field public static final enum USER_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "IMAGE_FETCH"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "NETFLIX_SERVICE_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "CONFIG_AGENT_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->CONFIG_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "USER_AGENT_LOADED"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->USER_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "FALKOR_AGENT_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->FALKOR_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "NRD_CONTROLLER_LOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NRD_CONTROLLER_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOGGING_AGENT_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOGGING_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "DRM_LOADED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 51
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LAUNCH_ACTIVITY_LIFE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LAUNCH_ACTIVITY_MANAGER_LOAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 59
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "RESOURCE_FETCHER_LOAD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->RESOURCE_FETCHER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOLOMO_PREFETCH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOLOMO_LOAD"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "TTI"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "TTR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "PROFILE_GATE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "SIGN_UP"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOG_IN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOG_IN:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "DP_TTI"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "DP_TTR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOLOMO_PREFETCH_SERIALIZE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH_SERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "LOLOMO_PREFETCH_DESERIALIZE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH_DESERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "ONRAMP_TTR"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    const-string/jumbo v1, "NON_MEMBER_TTI"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NON_MEMBER_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    .line 14
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NETFLIX_SERVICE_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->CONFIG_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->USER_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->FALKOR_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NRD_CONTROLLER_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOGGING_AGENT_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DRM_LOADED:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_LIFE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LAUNCH_ACTIVITY_MANAGER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->RESOURCE_FETCHER_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_LOAD:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->PROFILE_GATE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->SIGN_UP:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOG_IN:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->DP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH_SERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->LOLOMO_PREFETCH_DESERIALIZE:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->ONRAMP_TTR:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NON_MEMBER_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->$VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Sessions;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->$VALUES:[Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/perf/Sessions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method
