.class public final enum Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;
.super Ljava/lang/Enum;
.source "UserActionLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field public static final enum boletto:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field public static final enum creditCard:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field public static final enum directDebit:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field public static final enum ideal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

.field public static final enum paypal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    const-string/jumbo v1, "directDebit"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->directDebit:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 409
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    const-string/jumbo v1, "creditCard"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->creditCard:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 410
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    const-string/jumbo v1, "ideal"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->ideal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 411
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    const-string/jumbo v1, "paypal"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->paypal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 412
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    const-string/jumbo v1, "boletto"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->boletto:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    .line 407
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->directDebit:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->creditCard:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->ideal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->paypal:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->boletto:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

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
    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;
    .locals 1

    .prologue
    .line 407
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    return-object v0
.end method
