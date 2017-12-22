.class Lcom/netflix/mediaclient/ui/player/PostPlay$5;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

.field final synthetic val$autoPlayCta:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$5;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$5;->val$autoPlayCta:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$5;->val$autoPlayCta:Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PostPlayCallToAction;->playAction(Z)V

    .line 411
    return-void
.end method
