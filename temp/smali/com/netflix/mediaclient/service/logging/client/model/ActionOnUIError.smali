.class public final enum Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;
.super Ljava/lang/Enum;
.source "ActionOnUIError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

.field public static final enum displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

.field public static final enum handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    const-string/jumbo v1, "handledSilently"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    const-string/jumbo v1, "displayedError"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->handledSilently:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->displayedError:Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/client/model/ActionOnUIError;

    return-object v0
.end method
