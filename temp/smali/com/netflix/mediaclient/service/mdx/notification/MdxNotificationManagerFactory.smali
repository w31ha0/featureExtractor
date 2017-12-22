.class public Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerFactory;
.super Ljava/lang/Object;
.source "MdxNotificationManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;-><init>(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 22
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getMdxConfiguration()Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerWrapper;-><init>(Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;Lcom/netflix/mediaclient/service/configuration/MdxConfiguration;)V

    return-object v1

    .line 19
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;-><init>(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V

    goto :goto_0
.end method
