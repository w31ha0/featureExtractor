.class public final enum Lcom/netflix/mediaclient/service/logging/client/model/UIMode;
.super Ljava/lang/Enum;
.source "UIMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/client/model/UIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

.field public static final enum jfk:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

.field public static final enum member:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

.field public static final enum nonmember:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    const-string/jumbo v1, "jfk"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->jfk:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    const-string/jumbo v1, "member"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->member:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    const-string/jumbo v1, "nonmember"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->nonmember:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->jfk:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->member:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->nonmember:Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIMode;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/client/model/UIMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->$VALUES:[Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/client/model/UIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/client/model/UIMode;

    return-object v0
.end method
