.class public final enum Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;
.super Ljava/lang/Enum;
.source "PostPlayRequestContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field public static final enum BROWSE:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field public static final enum MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field public static final enum POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    const-string/jumbo v1, "MDX"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    const-string/jumbo v1, "POST_PLAY"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    const-string/jumbo v1, "BROWSE"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->BROWSE:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->BROWSE:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    return-object v0
.end method
