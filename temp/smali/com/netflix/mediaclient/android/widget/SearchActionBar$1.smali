.class Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;
.super Ljava/lang/Object;
.source "SearchActionBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/SearchActionBar;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->access$000(Lcom/netflix/mediaclient/android/widget/SearchActionBar;)Landroid/view/GestureDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->access$000(Lcom/netflix/mediaclient/android/widget/SearchActionBar;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iget-object v0, v0, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->search:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 105
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->voice:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    iget-object v4, p0, Lcom/netflix/mediaclient/android/widget/SearchActionBar$1;->this$0:Lcom/netflix/mediaclient/android/widget/SearchActionBar;

    iget-object v4, v4, Lcom/netflix/mediaclient/android/widget/SearchActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 106
    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v4

    .line 104
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
