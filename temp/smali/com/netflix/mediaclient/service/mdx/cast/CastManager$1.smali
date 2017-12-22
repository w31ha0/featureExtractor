.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$002(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter;)Landroid/support/v7/media/MediaRouter;

    .line 71
    return-void
.end method
