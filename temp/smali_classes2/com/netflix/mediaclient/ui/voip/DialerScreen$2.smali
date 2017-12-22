.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    .line 156
    return-void
.end method
