.class Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;
.super Ljava/lang/Object;
.source "PrepareHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;->this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    const-string/jumbo v0, "nf_prepareHelperImpl"

    const-string/jumbo v1, "ttr timed-out, process any pending requests"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;->this$0:Lcom/netflix/mediaclient/service/PrepareHelperImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->access$100(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V

    .line 154
    return-void
.end method
