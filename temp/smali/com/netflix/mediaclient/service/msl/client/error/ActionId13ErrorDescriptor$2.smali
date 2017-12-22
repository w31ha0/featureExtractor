.class final Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor$2;
.super Ljava/lang/Object;
.source "ActionId13ErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "nf_appboot_error"

    const-string/jumbo v1, "ActionID 13, reset..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method
