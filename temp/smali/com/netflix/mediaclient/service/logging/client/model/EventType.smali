.class public final enum Lcom/netflix/mediaclient/service/logging/client/model/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/client/model/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/EventType;

.field public static final enum edit:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

.field public static final enum event:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

.field public static final enum sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

.field public static final enum sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    const-string/jumbo v1, "event"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->event:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    const-string/jumbo v1, "sessionStarted"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    const-string/jumbo v1, "sessionEnded"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    const-string/jumbo v1, "edit"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/logging/client/model/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->edit:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->event:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->edit:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/EventType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/EventType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/client/model/EventType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/client/model/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    return-object v0
.end method
