.class Lcom/netflix/mediaclient/ui/player/error/ActionIdErrorDescriptorFactory;
.super Ljava/lang/Object;
.source "ActionIdErrorDescriptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static getHandlerForActionIdError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 4

    .prologue
    .line 20
    const-string/jumbo v0, ""

    .line 23
    const-string/jumbo v1, "ErrorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NccpError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getActionId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 63
    const-string/jumbo v1, "ErrorManager"

    const-string/jumbo v2, "default, try to find correct error"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/UknownErrorDescriptor;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId1ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_1
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId2ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId2ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_2
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_3
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId4ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId4ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_4
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId5ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId5ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_5
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId6ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId6ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_6
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId7ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_7
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId8ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId8ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_8
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId9ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_9
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId10ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_a
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId11ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId11ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_b
    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ActionId12ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
