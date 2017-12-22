.class public final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;
.super Ljava/lang/Enum;
.source "StartPlayEvents.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

.field public static final enum rebuffer:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

.field public static final enum repos:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

.field public static final enum skip:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

.field public static final enum start:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->start:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    const-string/jumbo v1, "repos"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->repos:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    const-string/jumbo v1, "rebuffer"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->rebuffer:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    const-string/jumbo v1, "skip"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->skip:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->start:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->repos:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->rebuffer:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->skip:Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents$Reason;

    return-object v0
.end method
