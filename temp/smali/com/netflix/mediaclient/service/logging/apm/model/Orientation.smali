.class public final enum Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

.field public static final enum landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

.field public static final enum portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    const-string/jumbo v1, "portrait"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    const-string/jumbo v1, "landscape"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->portrait:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->landscape:Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->$VALUES:[Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/apm/model/Orientation;

    return-object v0
.end method
