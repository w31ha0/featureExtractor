.class public final enum Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;
.super Ljava/lang/Enum;
.source "ExpiringContentAdvisory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

.field public static final enum LOG_WHEN_SHOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

.field public static final enum NEVER_SHOW_AGAIN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

.field public static final enum UNKNOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    const-string/jumbo v1, "NEVER_SHOW_AGAIN"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->NEVER_SHOW_AGAIN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    .line 60
    new-instance v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    const-string/jumbo v1, "LOG_WHEN_SHOWN"

    invoke-direct {v0, v1, v3}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->LOG_WHEN_SHOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    .line 61
    new-instance v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->UNKNOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->NEVER_SHOW_AGAIN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->LOG_WHEN_SHOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->UNKNOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->$VALUES:[Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;
    .locals 1

    .prologue
    .line 65
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 69
    sget-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->UNKNOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->$VALUES:[Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    return-object v0
.end method
