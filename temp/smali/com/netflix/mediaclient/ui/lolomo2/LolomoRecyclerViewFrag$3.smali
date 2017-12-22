.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$3;
.super Ljava/lang/Object;
.source "LolomoRecyclerViewFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->refresh()V

    .line 291
    return-void
.end method
