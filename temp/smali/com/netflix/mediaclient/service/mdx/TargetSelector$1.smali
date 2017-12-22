.class Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;
.super Landroid/os/Handler;
.source "TargetSelector.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$000(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 63
    const-string/jumbo v0, "nf_mdxTargetSelector"

    const-string/jumbo v1, "TargetSelector: unknown message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 39
    :pswitch_0
    const-string/jumbo v1, "nf_mdxTargetSelector"

    const-string/jumbo v2, "TargetSelector: target stickiness expired"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    .line 41
    const-string/jumbo v1, "mdx_target_uuid"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$100(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;->onStickinessExpired()V

    goto :goto_0

    .line 49
    :pswitch_1
    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    .line 50
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 55
    :pswitch_2
    const-string/jumbo v1, "mdx_target_uuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;->this$0:Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->access$200(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto :goto_0

    .line 59
    :pswitch_3
    const-string/jumbo v1, "mdx_target_lastactive"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    .line 60
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
