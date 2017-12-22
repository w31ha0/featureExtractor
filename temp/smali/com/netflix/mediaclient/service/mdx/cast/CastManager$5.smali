.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$force:Z

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 172
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$700(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$802(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$600(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launchNetflix failed, there is no route for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_1
    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->val$force:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$902(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Z)Z

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$600(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$600(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$600(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$1000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_1
.end method
