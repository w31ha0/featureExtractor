.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KongBattleResultScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBattleResultScreen$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_0
    return-void
.end method
