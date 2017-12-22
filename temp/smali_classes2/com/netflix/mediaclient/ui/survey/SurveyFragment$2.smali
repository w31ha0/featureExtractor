.class Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private isTracking:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

.field final synthetic val$s1:Landroid/widget/ImageView;

.field final synthetic val$s2:Landroid/widget/ImageView;

.field final synthetic val$s3:Landroid/widget/ImageView;

.field final synthetic val$s4:Landroid/widget/ImageView;

.field final synthetic val$s5:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s2:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s3:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s4:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s5:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->isTracking:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 97
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->isTracking:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v4

    .line 101
    :cond_1
    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0, p1, v4}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$100(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 104
    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v1, p1, p2}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$200(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->isTracking:Z

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0, p1, v3}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$100(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 108
    :cond_3
    if-ne v0, v4, :cond_0

    .line 109
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->isTracking:Z

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$200(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s1:Landroid/widget/ImageView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s2:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s3:Landroid/widget/ImageView;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s4:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->val$s5:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setOnTouchListeners(Landroid/view/View$OnTouchListener;[Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/survey/SurveyFragment$2;->this$0:Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->access$300(Lcom/netflix/mediaclient/ui/survey/SurveyFragment;Landroid/view/View;)V

    goto :goto_0
.end method
