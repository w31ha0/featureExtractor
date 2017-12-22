.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "KongUnlockScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2$1;-><init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongUnlockScreen$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_0
    return-void
.end method
