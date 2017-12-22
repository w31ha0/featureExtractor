.class Lcom/netflix/mediaclient/ui/player/PostPlay$4;
.super Ljava/lang/Object;
.source "PostPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$4;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$4;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlay;->moveFromInterruptedToPlayingFromStart()V

    .line 266
    return-void
.end method
