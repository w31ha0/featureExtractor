.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPCardLayout.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 741
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$402(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$6;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->onVideoPlaybackStarted()V

    .line 744
    return-void
.end method
