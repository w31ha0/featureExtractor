.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;
.super Ljava/lang/Object;
.source "CastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field final synthetic val$success:Z

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->val$success:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$1100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->val$success:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;->onLaunchResult(ZLjava/lang/String;)V

    .line 304
    return-void
.end method
