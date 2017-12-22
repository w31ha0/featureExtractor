.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$keyboardHider;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1100(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V

    .line 1007
    const/4 v0, 0x0

    return v0
.end method
