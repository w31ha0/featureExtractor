.class public Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayFactory;
.super Ljava/lang/Object;
.source "InteractivePostPlayFactory.java"


# static fields
.field public static final KONG:Ljava/lang/String; = "KONG_POST_PLAY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManager(Ljava/lang/String;Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;)Lcom/netflix/mediaclient/ui/iko/InteractivePostPlayManager;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const-string/jumbo v1, "KONG_POST_PLAY"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;

    check-cast p2, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongInteractivePostPlayManager;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V

    goto :goto_0
.end method
