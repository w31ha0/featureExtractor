.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;
.super Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;
.source "KongInteractiveMomentsModel.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "kong"


# instance fields
.field moments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/model/InteractiveMomentsModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getMoments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->moments:Ljava/util/List;

    return-object v0
.end method

.method public getPreCacheableResourcesList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->moments:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->moments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    .line 209
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->notification:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentAnimationImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getUnlockSfxSoundUrl()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_3
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongInteractiveMomentsModel{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", moments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;->moments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
