.class public final Lq;
.super Ljava/lang/Object;

# interfaces
.implements Lo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "action"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    instance-of v1, p3, Lb;

    if-eqz v1, :cond_1

    move-object v0, p3

    check-cast v0, Lb;

    move-object v1, v0

    invoke-virtual {v1}, Lb;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Could not get adActivity to create the video."

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Could not get adWebView to create the video."

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "load"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "url"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lc;->d()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, "activity was null while loading a video."

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/ads/AdActivity;->a(Landroid/widget/VideoView;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->a()Landroid/widget/VideoView;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "Could not get the VideoView for a video GMSG."

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "play"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    const-string v1, "Video is now playing."

    invoke-static {v1}, Lcom/google/ads/util/d;->d(Ljava/lang/String;)V

    const-string v1, "javascript:AFMA_ReceiveMessage(\'onVideoEvent\', {\'event\': \'playing\'});"

    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "pause"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_7
    const-string v2, "stop"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_8
    const-string v2, "remove"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0

    :cond_9
    const-string v2, "replay"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0

    :cond_a
    const-string v2, "currentTime"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "time"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_b

    const-string v1, "No \"time\" parameter!"

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "position"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movie action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
