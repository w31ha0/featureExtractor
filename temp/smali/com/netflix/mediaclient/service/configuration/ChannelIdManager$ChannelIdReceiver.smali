.class public final Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChannelIdManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    if-nez p2, :cond_1

    .line 131
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dropping null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ChannelId receiver invoked and received Intent with Action %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    const-string/jumbo v1, "com.netflix.partner.activation.intent.action.CHANNEL_ID_RESPONSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dropping intent! wrong action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v0, "channelId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$100(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Ignoring channelId intent - already got"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$200(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "channelIdValue"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$102(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Got channelId : %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;->this$0:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->access$100(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
