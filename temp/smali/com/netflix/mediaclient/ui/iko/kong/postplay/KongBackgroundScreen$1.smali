.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;
.super Ljava/lang/Object;
.source "KongBackgroundScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

.field final synthetic val$kongPostPlayContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;->val$kongPostPlayContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setUserInteraction()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongBackgroundScreen$1;->val$kongPostPlayContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string/jumbo v0, "KongBackgroundScreen"

    const-string/jumbo v1, "Hijacking tap when post play is in visible state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
