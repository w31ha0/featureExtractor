.class Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;
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
    .line 120
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;->this$0:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->access$300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    .line 124
    return-void
.end method
