.class Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;
.super Ljava/lang/Object;
.source "MediaSessionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MediaSessionController$1;->this$0:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$000(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->access$100(Lcom/netflix/mediaclient/service/mdx/MediaSessionController;I)V

    .line 126
    return-void
.end method
