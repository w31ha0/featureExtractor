.class Lcom/netflix/mediaclient/ui/home/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "onDrawerClosed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$500(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->reportNotificationsImpression(Z)V

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportLeftMenuImpressionEnded(Landroid/content/Context;Z)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportLeftMenuUIViewCommandEnded(Landroid/content/Context;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v3, "onDrawerOpened"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v3, :cond_0

    .line 218
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v3, "Drawer was opened - scheduling a timer to mark all visible notifications as read"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v3, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity$3$1;-><init>(Lcom/netflix/mediaclient/ui/home/HomeActivity$3;)V

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$102(Lcom/netflix/mediaclient/ui/home/HomeActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$302(Lcom/netflix/mediaclient/ui/home/HomeActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$300(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$100(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    if-eqz v0, :cond_1

    .line 236
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$400(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->touch:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    :goto_0
    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportLeftMenuUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$402(Lcom/netflix/mediaclient/ui/home/HomeActivity;Z)Z

    .line 239
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_0
    const-string/jumbo v4, "notifications"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-eq v0, v5, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v4, "unreadNotifications"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v0

    sget-object v5, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportLeftMenuImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$3;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$200(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu;->reportNotificationsImpression(Z)V

    .line 250
    :cond_1
    return-void

    .line 236
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;->swipe:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputValue;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 241
    goto :goto_1

    :cond_4
    move v0, v2

    .line 242
    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string/jumbo v4, "HomeActivity"

    const-string/jumbo v5, "setupViews() Got exception"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
