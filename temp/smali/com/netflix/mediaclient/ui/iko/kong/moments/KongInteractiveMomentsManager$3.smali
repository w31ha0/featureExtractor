.class Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;
.super Ljava/lang/Object;
.source "KongInteractiveMomentsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$500(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;

    .line 308
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$600(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getMomentAnimationImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$600(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->setImageBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->getUnlockSfxSoundUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongInteractiveMoment;->setSfxSoundPoolId(I)V

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method
