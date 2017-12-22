.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;
.super Ljava/lang/Object;
.source "LoLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->refresh()V

    .line 280
    return-void
.end method
