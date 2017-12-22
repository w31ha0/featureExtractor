.class Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor$1;
.super Ljava/lang/Object;
.source "WidevineErrorDescriptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor$1;->this$0:Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->access$000(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    .line 93
    return-void
.end method
