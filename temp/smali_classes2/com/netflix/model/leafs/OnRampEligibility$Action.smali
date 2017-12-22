.class public final enum Lcom/netflix/model/leafs/OnRampEligibility$Action;
.super Ljava/lang/Enum;
.source "OnRampEligibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/OnRampEligibility$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/OnRampEligibility$Action;

.field public static final enum FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

.field public static final enum RECORD:Lcom/netflix/model/leafs/OnRampEligibility$Action;

.field public static final enum UNKNOWN:Lcom/netflix/model/leafs/OnRampEligibility$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;

    const-string/jumbo v1, "FETCH"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/OnRampEligibility$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    .line 47
    new-instance v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;

    const-string/jumbo v1, "RECORD"

    invoke-direct {v0, v1, v3}, Lcom/netflix/model/leafs/OnRampEligibility$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->RECORD:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    .line 48
    new-instance v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/netflix/model/leafs/OnRampEligibility$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->UNKNOWN:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/model/leafs/OnRampEligibility$Action;

    sget-object v1, Lcom/netflix/model/leafs/OnRampEligibility$Action;->FETCH:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/model/leafs/OnRampEligibility$Action;->RECORD:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/model/leafs/OnRampEligibility$Action;->UNKNOWN:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->$VALUES:[Lcom/netflix/model/leafs/OnRampEligibility$Action;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/model/leafs/OnRampEligibility$Action;
    .locals 1

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/OnRampEligibility$Action;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/OnRampEligibility$Action;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 56
    sget-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->UNKNOWN:Lcom/netflix/model/leafs/OnRampEligibility$Action;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/OnRampEligibility$Action;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/OnRampEligibility$Action;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/model/leafs/OnRampEligibility$Action;->$VALUES:[Lcom/netflix/model/leafs/OnRampEligibility$Action;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/OnRampEligibility$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/OnRampEligibility$Action;

    return-object v0
.end method
