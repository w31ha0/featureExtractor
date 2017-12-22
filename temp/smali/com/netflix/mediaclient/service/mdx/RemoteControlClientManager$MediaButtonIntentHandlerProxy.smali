.class public Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager$MediaButtonIntentHandlerProxy;
.super Landroid/content/BroadcastReceiver;
.source "RemoteControlClientManager.java"


# static fields
.field public static final RESEND_MEDIA_BUTTON_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.service.mdx.MediaButtonIntentHandlerProxy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 287
    const-string/jumbo v0, "RemoteControlClientManager"

    const-string/jumbo v1, "Re-sending media button event as local broadcast..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string/jumbo v0, "com.netflix.mediaclient.service.mdx.MediaButtonIntentHandlerProxy"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 290
    return-void
.end method
