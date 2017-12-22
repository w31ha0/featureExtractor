.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KongPowerUpScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 342
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 343
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 352
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongPowerUpScreen$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method
