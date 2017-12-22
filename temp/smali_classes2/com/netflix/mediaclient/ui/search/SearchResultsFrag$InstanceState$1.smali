.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

.field final synthetic val$flowLayout:Lcom/netflix/mediaclient/android/widget/FlowLayout;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/FlowLayout;I)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;->this$1:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;->val$flowLayout:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;->val$selectedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;->val$flowLayout:Lcom/netflix/mediaclient/android/widget/FlowLayout;

    iget v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;->val$selectedPosition:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_0

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 1080
    :cond_0
    return-void
.end method
