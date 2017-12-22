.class public final enum Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
.super Ljava/lang/Enum;
.source "CustomerServiceLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

.field public static final enum failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const-string/jumbo v1, "canceledByUserBeforeConnected"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 164
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const-string/jumbo v1, "canceledByUserAfterConnected"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 165
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const-string/jumbo v1, "canceledByNetflix"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 166
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const-string/jumbo v1, "failedBeforeConnected"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 167
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    const-string/jumbo v1, "failedAfterConnected"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    return-object v0
.end method
