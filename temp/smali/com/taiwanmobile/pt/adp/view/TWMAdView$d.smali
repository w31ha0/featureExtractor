.class Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.source "TWMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;-><init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x20

    .line 98
    invoke-super {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getAdType()I

    move-result v2

    .line 107
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "adType : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0, v7}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Z)V

    .line 109
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getTimes()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->g(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    .line 114
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getScheduleTime()I

    move-result v0

    .line 115
    if-eqz v0, :cond_1

    if-eq v2, v6, :cond_1

    .line 116
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    new-instance v3, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V

    invoke-static {v1, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V

    .line 117
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_1
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->h(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 122
    const-string v0, "_context"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "adListener"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "adRequest"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->j(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "targetUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "mediaUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v0, "adType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "planId"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getPlanId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "cvt"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getClickValidTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "ad"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "clickUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getReportClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "adSize"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->k(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v3, "userAgent"

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "isOpenChrome"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->isOpenChrome()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const/16 v0, 0x8

    if-ne v2, v0, :cond_2

    .line 136
    const-string v0, "subMediaUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getSubMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    :cond_2
    if-ne v2, v6, :cond_3

    .line 139
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isVideoShouldSetAsMute(Landroid/content/Context;)Z

    move-result v0

    .line 140
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->isVideoMute()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 141
    const-string v0, "isMute"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getTxId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;

    .line 156
    const-string v3, "_deviceId"

    const-string v4, "_deviceId"

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    if-eq v2, v6, :cond_4

    .line 159
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    const-string v1, "normal banner"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Ljava/lang/String;)V

    .line 162
    :cond_4
    iget-object v6, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getTargetUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->getTxId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {v6, v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;)V

    .line 164
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->post(Ljava/lang/Runnable;)Z

    .line 167
    :cond_5
    return-void

    .line 143
    :cond_6
    const-string v0, "isMute"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$d;->isVideoMute()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
