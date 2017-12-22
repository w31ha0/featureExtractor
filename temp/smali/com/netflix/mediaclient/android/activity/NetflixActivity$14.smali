.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$PanelSlideListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2565
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanelAnchored(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2617
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelAnchored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    return-void
.end method

.method public onPanelCollapsed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2608
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelCollapsed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelCollapsed(Landroid/view/View;)V

    .line 2610
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onPanelCollapsed()V

    .line 2613
    :cond_0
    return-void
.end method

.method public onPanelExpanded(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2599
    const-string/jumbo v0, "NetflixActivity"

    const-string/jumbo v1, "onPanelExpanded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onSlidingPanelExpanded(Landroid/view/View;)V

    .line 2601
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onPanelExpanded()V

    .line 2604
    :cond_0
    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2572
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$300(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/ui/mdx/ICastPlayerFrag;->onPanelSlide(F)V

    .line 2576
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2595
    :cond_1
    :goto_0
    return-void

    .line 2580
    :cond_2
    const v0, 0x3e99999a    # 0.3f

    .line 2581
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 2582
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1900(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2585
    :cond_3
    cmpg-float v0, p2, v0

    if-gtz v0, :cond_4

    .line 2586
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2587
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hide(Z)V

    goto :goto_0

    .line 2591
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2592
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$14;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->show(Z)V

    goto :goto_0
.end method
