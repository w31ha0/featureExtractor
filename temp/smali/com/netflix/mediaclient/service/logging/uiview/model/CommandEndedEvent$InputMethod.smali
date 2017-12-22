.class public final enum Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;
.super Ljava/lang/Enum;
.source "CommandEndedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field public static final enum gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field public static final enum key:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field public static final enum pointer:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field public static final enum url:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

.field public static final enum voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->key:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const-string/jumbo v1, "voice"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 113
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const-string/jumbo v1, "gesture"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const-string/jumbo v1, "pointer"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->pointer:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const-string/jumbo v1, "url"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->url:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->key:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->pointer:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->url:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->$VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->$VALUES:[Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    return-object v0
.end method
