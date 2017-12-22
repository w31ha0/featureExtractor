.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;
.super Ljava/lang/Object;
.source "WPCardLayout.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$002(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Z)Z

    .line 419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$3;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V

    .line 420
    return-void
.end method
