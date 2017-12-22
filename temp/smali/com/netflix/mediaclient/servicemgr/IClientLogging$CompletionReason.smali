.class public final enum Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
.super Ljava/lang/Enum;
.source "IClientLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field public static final enum canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field public static final enum failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field public static final enum success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v1, "success"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 262
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v1, "canceled"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 263
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 260
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

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
    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .prologue
    .line 260
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method
