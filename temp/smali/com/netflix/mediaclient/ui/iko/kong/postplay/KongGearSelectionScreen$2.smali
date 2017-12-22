.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KongGearSelectionScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$600(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$500(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$700(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$800(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 355
    return-void
.end method
