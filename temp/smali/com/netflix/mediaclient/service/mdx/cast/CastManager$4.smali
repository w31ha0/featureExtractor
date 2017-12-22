.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;
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
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disconnect ApiClient"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->stop()V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$502(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    const-string/jumbo v1, "user disconnect"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onApplicationStopped(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ApiClient disconnected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method
