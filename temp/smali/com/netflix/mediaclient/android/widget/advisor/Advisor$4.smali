.class Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;
.super Ljava/lang/Object;
.source "Advisor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/advisor/Advisor;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    .line 310
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/advisor/Advisor$4;->this$0:Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    iget-object v4, v4, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    .line 309
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 311
    return-void
.end method
