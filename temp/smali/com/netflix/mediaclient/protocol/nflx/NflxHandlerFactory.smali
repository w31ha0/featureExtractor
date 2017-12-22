.class public final Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;
.super Ljava/lang/Object;
.source "NflxHandlerFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NflxHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endCommandSessions(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 352
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->isIntentFromPreappWidget(Landroid/content/Intent;)Z

    move-result v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 356
    :cond_0
    return-void
.end method

.method private static findHandleForUriParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 145
    const-string/jumbo v0, "[?&]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 147
    array-length v4, v2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 148
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 149
    if-gtz v6, :cond_0

    .line 150
    const-string/jumbo v6, "NflxHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No params found for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 154
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {p0, v3, p2, p3, p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->handleNflxParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;JLjava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "NflxHandler"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DataUtil;->logVerboseUriInfo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    const-string/jumbo v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "movi.es"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->handleTinyUrlParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string/jumbo v0, "nflx"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "unknown scheme"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 107
    :cond_1
    const-string/jumbo v0, "www.netflix.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "invalid host"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 112
    :cond_2
    const-string/jumbo v0, "/browse"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "invalid path"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 117
    :cond_3
    const-string/jumbo v0, "q"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no nflx params"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 123
    :cond_4
    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->findHandleForUriParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHandlerForIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUserOpenedNotification(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->reportPreappEventsOnNflxAction(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 65
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Handle NFLX intent starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "null intent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 82
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "unknown action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 77
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no uri"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v0, "NflxHandler"

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getHandler(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/net/Uri;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUrlForReporting(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 282
    const-string/jumbo v0, "movieid"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTargetUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleNflxParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;JLjava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")",
            "Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 188
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 189
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "no params exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v7}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 274
    :goto_0
    return-object v7

    .line 193
    :cond_0
    const-string/jumbo v0, "profileGate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/ProfileGateActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;J)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getAction(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-nez v0, :cond_2

    .line 199
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Action is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v7, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v7}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    goto :goto_0

    .line 202
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v3, 0x0

    .line 208
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 211
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->createDeepLink(Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    move-result-object v6

    .line 213
    const-string/jumbo v5, "home"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "handleHomeAction starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 217
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    :goto_1
    move-object v0, p0

    move-wide v4, p2

    .line 273
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isPlayAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 220
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "handle play starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->playback:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 222
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/PlayActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    .line 224
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isViewDetailsAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 225
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "view details starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getUrlForReporting(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v2, v4, v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 229
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 231
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 232
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    .line 234
    :cond_5
    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->isGenreAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 235
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "genre starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->browseTitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 238
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    goto :goto_1

    .line 240
    :cond_6
    const-string/jumbo v5, "search"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 241
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "search starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->search:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 243
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    .line 245
    :cond_7
    const-string/jumbo v5, "sync"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v3, "sync starts..."

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->homeScreen:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 250
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/SyncActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    goto/16 :goto_1

    .line 252
    :cond_8
    const-string/jumbo v2, "iq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 253
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "Add to instant queue starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->getUrlForReporting(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v2, v4, v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 259
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 260
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/AddToMyListActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto/16 :goto_1

    .line 262
    :cond_9
    const-string/jumbo v2, "download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 263
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v2, "Add to donwload queue starts..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 265
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/DownloadActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/protocol/nflx/DownloadActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    move-object v7, v0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto/16 :goto_1

    .line 268
    :cond_a
    const-string/jumbo v1, "NflxHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Nflx action: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/protocol/nflx/NotHandlingActionHandler;-><init>()V

    .line 270
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-object v7, v0

    move v2, v3

    move-object v3, v4

    goto/16 :goto_1
.end method

.method private static handleTinyUrlParams(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;J)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    .line 297
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "view details from tiny url starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->deepLink:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v0, v1, v6, p1}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 304
    const-string/jumbo v0, "source=android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 306
    if-eqz v7, :cond_0

    .line 307
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->shareOpenSheet:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p0, v0, v1, v6, v6}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-static {p1, p0, v6, v0}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetOpenActionStarted(Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 309
    invoke-static {p0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 311
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string/jumbo v0, "u"

    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 315
    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportUiSessions(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;JLcom/netflix/mediaclient/service/logging/apm/model/DeepLink;)V

    .line 317
    if-eqz v7, :cond_1

    .line 318
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {p0, v0, v6}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportShareSheetOpenActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 320
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;

    invoke-direct {v0, p0, v8}, Lcom/netflix/mediaclient/protocol/nflx/ViewDetailsActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 321
    return-object v0
.end method

.method private static isIntentFromPreappWidget(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    const-string/jumbo v1, "FROM_PREAPP_WIDGET"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string/jumbo v2, "NetflixWidget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static reportPreappEventsOnNflxAction(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandlerFactory;->isIntentFromPreappWidget(Landroid/content/Intent;)Z

    move-result v0

    .line 327
    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Nflx action from PreappWidget, log events. Intent=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {p0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->reportStoredLogEvents(Landroid/content/Context;Z)V

    .line 334
    const-string/jumbo v0, "widgetId"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 335
    const-string/jumbo v1, "actionName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;->createInstance(Landroid/content/Context;IZ)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;

    move-result-object v0

    .line 337
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;

    move-result-object v1

    .line 339
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->androidWidgetCommand:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-static {p0, v2, v0, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportPreAppWidgetActionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogData;Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData;)V

    goto :goto_0
.end method
