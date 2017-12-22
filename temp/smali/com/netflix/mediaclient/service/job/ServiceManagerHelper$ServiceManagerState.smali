.class final enum Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
.super Ljava/lang/Enum;
.source "ServiceManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field public static final enum ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field public static final enum ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

.field public static final enum WaitingForResult:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const-string/jumbo v1, "WaitingForResult"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->WaitingForResult:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const-string/jumbo v1, "ServiceManagerReady"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    const-string/jumbo v1, "ServiceManagerFailed"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->WaitingForResult:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerReady:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->ServiceManagerFailed:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->$VALUES:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->$VALUES:[Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$ServiceManagerState;

    return-object v0
.end method
