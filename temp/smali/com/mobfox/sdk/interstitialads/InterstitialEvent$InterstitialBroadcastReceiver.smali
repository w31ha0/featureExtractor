.class public Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InterstitialEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InterstitialBroadcastReceiver"
.end annotation


# instance fields
.field event:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent;
    .param p2, "e"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->event:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    .line 159
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 163
    if-nez p2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v6, "message"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "message":Ljava/lang/String;
    const-string v6, "MobFoxInterstitial"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v6, "data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "data":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 175
    :pswitch_0
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$1;

    invoke-direct {v7, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :sswitch_0
    const-string v8, "onAdClick"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_1
    const-string v8, "onVideoAdFinished"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    goto :goto_1

    :sswitch_2
    const-string v8, "onAdClosed"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "onError"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v8, "onAutoRedirect"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v8, "onRendered"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x5

    goto :goto_1

    .line 183
    :pswitch_1
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$2;

    invoke-direct {v7, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$2;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 191
    :pswitch_2
    const-string v6, "MobFoxInterstitial"

    const-string v8, "interstitial event >> onAdClosed"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-boolean v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->closed:Z

    if-nez v6, :cond_0

    .line 193
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iput-boolean v7, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->closed:Z

    .line 194
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mMessageReceiver:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    if-eqz v6, :cond_3

    .line 195
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    iget-object v7, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v7, v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mMessageReceiver:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    :cond_3
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$3;

    invoke-direct {v7, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$3;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 206
    :pswitch_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "dataObject":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "errorMassage":Ljava/lang/String;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$4;

    invoke-direct {v7, p0, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$4;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;Ljava/lang/Exception;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    .end local v1    # "dataObject":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "errorMassage":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 216
    .local v3, "err":Lorg/json/JSONException;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "interstitial event JSONException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    .end local v3    # "err":Lorg/json/JSONException;
    :pswitch_4
    const-string v6, "MobFoxInterstitial"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onAutoRedirect, url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;

    invoke-direct {v7, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 229
    :pswitch_5
    const-string v6, "MobFoxInterstitial"

    const-string v7, "onRendered"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v6, v6, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$6;

    invoke-direct {v7, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$6;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        -0x78649c4c -> :sswitch_5
        -0x50755897 -> :sswitch_3
        0x969e846 -> :sswitch_0
        0x23d6166e -> :sswitch_2
        0x3ca2a62a -> :sswitch_4
        0x4a8480b1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
