.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$1;
.super Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;
.source "LolomoRecyclerViewFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    invoke-direct {p0, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected getTrackingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "LolomoLinearLayoutManager"

    return-object v0
.end method
